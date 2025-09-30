#!/bin/bash
#
# Fetch docker compose and env files from 
# https://github.com/jitsi/docker-jitsi-meet
#

set -euo pipefail

arch="x86-64"
branding="true"
version="stable-10431"

usage() {
    echo "Usage: $0 [--no-branding] [--arch <x86-64|arm64>] <version>"
    echo "          <version>     Jitsi-docker release version to generate config for."
    echo "                        Either a release tag like '${version}'"
    echo "                        or 'latest' for latest development master branch."
    echo "                        See https://github.com/jitsi/docker-jitsi-meet/releases"
    echo "                        for available versions."
    echo "                        Defaults to '${version}'"
    echo "          --arch <arch> Generate config for this architecture. Must be"
    echo "                        'x86-64' or 'arm64' if provided."
    echo "                        Defaults to 'x86-64'."
    echo "          --no-branding Don't use Flatcar branding."
    echo
}
# --

function test_branding_patch() {
  local url="$1"
  local patch="$2"

  echo "Verifying our branding patch applies..."
  curl -fsSL "${url}/docker-compose.yml" --remote-name

  patch -p1 --dry-run <"${patch}"
}
# --

while [ $# -gt 0 ] ; do
    case "$1" in
        --no-branding) branding="false";;
        --arch) if [ "$2" != "x86-64" -a "$2" != "arm64" ] ; then
                    echo "Unsupported arch '$2'."
                    echo "Arch must be 'x86-64' or 'arm64'."
                    exit 1
                fi
                arch="$2"
                shift;;
        -h) usage; exit;;
        --help) usage; exit;;
        *) version="$1"
    esac
    shift
done

if [ -z "${version}" ] ; then
    usage
    exit 1
fi


# Get docker compose yaml, default env, and related config files from
# jitsi-docker.
files_list=( "docker-compose.yml" "env.example" "gen-passwords.sh" "jibri.yml" )

base_url=""
if [ "$version" = "latest" ] ; then
    base_url="https://raw.githubusercontent.com/jitsi/docker-jitsi-meet/master"
else
    base_url="https://raw.githubusercontent.com/jitsi/docker-jitsi-meet/${version}"
fi

branding_patch="resources/branding-docker-compose.yml.patch"
if [ "$branding" = "true" ] ; then
  test_branding_patch "${base_url}" "${branding_patch}"
else
  branding_patch="resources/empty-branding-docker-compose.yml.patch"
fi

echo "Generating Ignition config"

sed -e "s,@ARCH@,${arch},g" \
    -e "s,@BRANDING_PATCH_FILE@,${branding_patch},g" \
    -e "s,@JITSI_BASE_URL@,${base_url},g" \
    config.yaml.tmpl \
    > config.yaml

cat config.yaml \
    | docker run --rm -i -v "$(pwd):/files" \
            quay.io/coreos/butane:latest --files-dir /files \
      > ignition.json

echo "All done. Configuration available at 'ignition.json'."
