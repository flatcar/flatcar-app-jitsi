#!/bin/bash
# Flatcar Jitsi server installer
# 
# Copyright (c) 2021 The Flatcar Maintainers.
# Use of this source code is governed by a Apache 2.0 license that can be
# found in the LICENSE file.

set -ex

MODERATOR_USER=flatcar
MODERATOR_PASS=$(openssl rand -hex 16)

SCRIPT_DIR="$(cd $(dirname ${BASH_SOURCE[0]}); pwd)"
DEST_DIR=~/jitsi-docker

# Use a release version / tag from https://github.com/jitsi/docker-jitsi-meet
#  otherwise the unstable nightly docker images will be used
JITSI_VERSION="${JITSI_VERSION:-stable-7648-4}"

JITSI_SERVER_FQDN="${JITSI_URL:-jitsi.flatcar.t-lo.net}"

mkdir -p "${DEST_DIR}"
cd ${DEST_DIR}

git clone https://github.com/jitsi/docker-jitsi-meet.git .
git checkout "${JITSI_VERSION}"

mkdir -p __jitsi_docker_config__/{web,transcripts,prosody/config,prosody/prosody-plugins-custom,jicofo,jvb,jigasi,jibri}

cp env.example .env
./gen-passwords.sh
sed -i 's/^HTTP_PORT.*/HTTP_PORT=80/' .env
sed -i 's/^HTTPS_PORT.*/HTTPS_PORT=443/' .env
sed -i "s,^CONFIG=.*,CONFIG=${DEST_DIR}/__jitsi_docker_config__," .env

cat "${SCRIPT_DIR}/flatcar.env" >> .env


# Start the services temporatily so we can create the moderator user
docker-compose -f docker-compose.yml -f jibri.yml up -d
sleep 2

docker-compose exec prosody /usr/bin/prosodyctl --config /config/prosody.cfg.lua register "${MODERATOR_USER}" meet.jitsi "${MODERATOR_PASS}"

docker-compose -f docker-compose.yml -f jibri.yml down

cat >>.env<<EOF
#
# Moderator user
# username: ${MODERATOR_USER}
# password: ${MODERATOR_PASS}
EOF

set +x
echo "==========================================================="
echo "All done."
echo
echo "Moderator account:"
echo "username: '${MODERATOR_USER}'"
echo "password: '${MODERATOR_PASS}'"

