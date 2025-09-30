<div style="text-align: center">

![Flatcar OS](https://img.shields.io/badge/Flatcar-App-blue?logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiBBZG9iZSBJbGx1c3RyYXRvciAyNi4wLjMsIFNWRyBFeHBvcnQgUGx1Zy1JbiAuIFNWRyBWZXJzaW9uOiA2LjAwIEJ1aWxkIDApICAtLT4NCjxzdmcgdmVyc2lvbj0iMS4wIiBpZD0ia2F0bWFuXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgODAwIDYwMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgODAwIDYwMDsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4NCgkuc3Qwe2ZpbGw6IzA5QkFDODt9DQo8L3N0eWxlPg0KPHBhdGggY2xhc3M9InN0MCIgZD0iTTQ0MCwxODIuOGgtMTUuOXYxNS45SDQ0MFYxODIuOHoiLz4NCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik00MDAuNSwzMTcuOWgtMzEuOXYxNS45aDMxLjlWMzE3Ljl6Ii8+DQo8cGF0aCBjbGFzcz0ic3QwIiBkPSJNNTQzLjgsMzE3LjlINTEydjE1LjloMzEuOVYzMTcuOXoiLz4NCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik02NTUuMiw0MjAuOXYtOTUuNGgtMTUuOXY5NS40aC0xNS45VjI2MmgtMzEuOVYxMzQuOEgyMDkuNFYyNjJoLTMxLjl2MTU5aC0xNS45di05NS40aC0xNnY5NS40aC0xNS45djMxLjINCgloMzEuOXYxNS44aDQ3Ljh2LTE1LjhoMTUuOXYxNS44SDI3M3YtMTUuOGgyNTQuOHYxNS44aDQ3Ljh2LTE1LjhoMTUuOXYxNS44aDQ3Ljh2LTE1LjhoMzEuOXYtMzEuMkg2NTUuMnogTTQ4Ny44LDE1MWg3OS42djMxLjgNCgloLTIzLjZ2NjMuNkg1MTJ2LTYzLjZoLTI0LjJMNDg3LjgsMTUxTDQ4Ny44LDE1MXogTTIzMywyMTQuNlYxNTFoNjMuN3YyMy41aC0zMS45djE1LjhoMzEuOXYyNC4yaC0zMS45djMxLjhIMjMzVjIxNC42eiBNMzA1LDMxNy45DQoJdjE1LjhoLTQ3Ljh2MzEuOEgzMDV2NDcuN2gtOTUuNVYyODYuMUgzMDVMMzA1LDMxNy45eiBNMzEyLjYsMjQ2LjRWMTUxaDMxLjl2NjMuNmgzMS45djMxLjhMMzEyLjYsMjQ2LjRMMzEyLjYsMjQ2LjRMMzEyLjYsMjQ2LjR6DQoJIE00NDguMywzMTcuOXY5NS40aC00Ny44di00Ny43aC0zMS45djQ3LjdoLTQ3LjhWMzAyaDE1Ljl2LTE1LjhoOTUuNVYzMDJoMTUuOUw0NDguMywzMTcuOXogTTQ0MCwyNDYuNHYtMzEuOGgtMTUuOXYzMS44aC0zMS45DQoJdi03OS41aDE1Ljl2LTE1LjhoNDcuOHYxNS44aDE1Ljl2NzkuNUg0NDB6IE01OTEuNiwzMTcuOXY0Ny43aC0xNS45djE1LjhoMTUuOXYzMS44aC00Ny44di0zMS43SDUyOHYtMTUuOGgtMTUuOXY0Ny43aC00Ny44VjI4Ni4xDQoJaDEyNy4zVjMxNy45eiIvPg0KPC9zdmc+DQo=)
[![Matrix](https://img.shields.io/badge/Matrix-Chat%20with%20us!-green?logo=matrix)](https://app.element.io/#/room/#flatcar:matrix.org)
[![Slack](https://img.shields.io/badge/Slack-Chat%20with%20us!-4A154B?logo=slack)](https://kubernetes.slack.com/archives/C03GQ8B5XNJ)
[![Twitter Follow](https://img.shields.io/twitter/follow/flatcar?style=social)](https://x.com/flatcar)
[![Mastodon Follow](https://img.shields.io/badge/Mastodon-Follow-6364FF?logo=mastodon)](https://hachyderm.io/@flatcar)
[![Bluesky](https://img.shields.io/badge/Bluesky-Follow-0285FF?logo=bluesky)](https://bsky.app/profile/flatcar.org)

</div>

# Jitsi as a Flatcar App.

This repo contains automation for deploying a full-featured Jitsi server on demand, within seconds.

The automation uses docker-compose files from https://github.com/jitsi/docker-jitsi-meet.

# Features

- A full-featured Jitsi server, stateless, deploy when you need it (and remove it afterwards)
- Jibri integration for server-side recording and live streaming
- LetsEncrypt integration for serving HTTPS from your Jitsi host
- Very minimal configuration requirements:
  - A host to provision Flatcar to with the `ignition.json` generated from this repo
  - hostname DNS entry and email address (for LetsEncrypt HTTPS cert)

- Provisioning can be tested in a local qemu VM.

# Installation

Although this installation is Flatcar branded you might re-use this repo to deploy your own Jitsi server.
Branding is patched in at configuration build time; just skip this step (in `generate_config.sh`)
and you'll get a stock Jitsi server.
You can also use your own logos, banner, and watermark.

The installation will go through these steps
- Clone this repo locally and configure your new server with minimal settings
- build your Flatcar ignition Jitsi configuration
- Provision a new Flatcar machine / VM and pass the ignition configuration (via "user data")
- Connect to your Jitsi server and meet away!

## Configure your deployment

First, clone this repo locally:
```bash
git clone https://github.com/flatcar/jitsi-server.git
cd jitsi-server
```

The deployment can be customised on 2 separate levels:
* `jitsi-config.env` is used by the script that generates our deployment configuration.
  It holds mandatory and optional settings (see below) for generating and tailoring the deployment.
  Also, important runtime environment variables for the Jitsi containers are set here.
* `jitsi-install.env` is used by the on-node Jitsi installer script [`jitsi-install.sh`](jitsi-install.sh)
  and contains settings used only at installation time.

Take a look at [`jitsi-config.env`](jitsi-config.env) and set
- `JITSI_SERVER_FQDN` to your new server's designated DNS name.
  You will need to point the respective DNS record to your new Jitsi server later,
   before or during provisioning.
- `LETSENCRYPT_EMAIL` to your email address for receiving LetsEncrypt notifications.
  This is particularly important for long-running servers as LetsEncrypt will send
  TLS certificate expiries to that email address.
  To refresh a certificate simply restart the Jitsi service (or the whole node).

You'll also find a number of pre-set variables for customising Jitsi features, e.g. authentication.

You may (but are not required to) change installer settings, too.
Check out [`jitsi-install.env`](jitsi-install.env) next:
* If you've set `ENABLE_AUTH` in `jitsi-config.env`, you may want to set a moderator username here.
* Optionally you can also set a moderator password.
  A random password will be generated otherwise, and you need to retrieve it from the instance's
  `/opt/jitsi/.env` file once it is provisioned.

The file also contains DNS/IP related options important to the installation process.

That's it, you're good to go!

## Generate configuration and deploy

This step will fetch docker compose YAML files from
[docker-jitsi-meet](https://github.com/jitsi/docker-jitsi-meet)
for a specific Jitsi release, and generate a self-contained configuration to pass
into a Flatcar deployment.

The config generator requires a Jitsi version.
At the time of writing, `stable-`10431` was the latest release.
This version is the default.
To use this version, run:
```bash
./generate_config.sh
```

To use a custom version, run:
```bash
./generate_config.sh <version>
```
For a full list of Jitsi releases, check out
https://github.com/jitsi/docker-jitsi-meet/releases.

This generates `ignition.json` which we'll feed into the Flatcar deployment.

Optionally pass `--no-branding` to `./generate_config.sh` to disable branding.

If your target deployment is ARM64, pass `--arch arm64` to
`./generate_config.sh` so the correct docker sysexts are used.

## Deploy

Deploy a new Flatcar instance on a
[cloud provider or private cloud of your choice](https://www.flatcar.org/docs/latest/installing/cloud/)
and feed `ignition.json` to the deployment.

If you deploy to a locked-down environment e.g. behind a NAT or firewall, make
sure to open ports 80 and 443 (TCP) and 10000 (UDP) to the instance (and
optionally port 22 if you want to ssh into your server).

The deployment is zero-touch.
There should be no need to interact with the instance to aid the deployment.

As soon as you know the IP address of your Flatcar Jitsi host, point the hostname DNS entry
(the one we used for `JITSI_SERVER_FQDN`) to that IP.

At first boot, the [installer](jitsi-install.sh) will run and set up Jitsi in `/opt/jitsi`. 

Jitsi will become available at the designated hostname after a few minutes.

## Meet

Connect to the host via `https://<hostname>` and start a meeting.

By default, authentication is enabled - though unauthenticated guests can enter after
an authenticated host has started a meeting.
The default authenticated user name is `flatcar`, and the password is auto-generated on
the node during provisioning.
Initial user and password are appended to `/opt/jitsi/.env` on the server.
See Customisation below on how to pass a custom user/password into the deployment.

## Customisations

- Installer script settings can be overridden in [jitsi-install.env](jitsi-install.env):
  - `MODERATOR_USER` Custom Jitsi meeting moderator user name
  - `MODERATOR_PASS` Password for `MODERATOR_USER`.
     Will be auto-generated at provisioning time and appended to `/opt/jitsi/.env` if not set.
  - `DEPLOY_SET_PUBLIC_IP` When `true`, before installing Jitsi, determine the server's public IP
     address and explicitly configure Jitsi for that IP address (via `JVB_ADVERTISE_IPS`).
     This is handy for running in a NATed / load-balanced cloud environment where the 
     instance doesn't know its public IP address (e.g. in protected Azure environments).
     Alternatively, this can be set to a public IP address to use _that_ address for the server.
     _Set to empty or to `false` to disable._
  - `DEPLOY_WAIT_FOR_HOSTNAME_DNS` wait for the hostname `JITSI_SERVER_FQDN` to resolve to
    the host's public IP before installing Jitsi. Needs `DEPLOY_SET_PUBLIC_IP`.
    In order to ensure we're not flooding LetsEncrypt with certificate queries (and get blocked as a result), the
    installer will check whether the designated hostname matches its public IP address before
    continuing the installation.
- Jitsi settings such as LetsEncrypt usage, authentication, live streaming and recording can be set in
  `jitsi-config.env`. All env variables of jitsi-docker's
  [`docker-compose.yml`](https://github.com/jitsi/docker-jitsi-meet/blob/master/docker-compose.yml)
  and [`jibri.yaml`](https://github.com/jitsi/docker-jitsi-meet/blob/master/jibri.yml)
  can be overridden there.

## Test the set-up locally

You can test locally in a qemu VM.
1. Uncomment the local test settings at the bottom of [`jitsi-config.env`](jitsi-config.env), then
2. disable `DEPLOY_SET_PUBLIC_IP` in [jitsi-install.env](jitsi-install.env), and
3. re-generate the configuration by running `./generate_config.sh`

Fetch the latest `flatcar_production_qemu_uefi_efi_code.fd`,
 `flatcar_production_qemu_uefi_efi_vars.fd`,
 `flatcar_production_qemu_uefi_image.img`,
 `flatcar_production_qemu_uefi.sh` from https://stable.release.flatcar-linux.net/amd64-usr/current/ .

Start a local Flatcar instance, pass `ignition.json` and export the necessary ports:
```
chmod 755 flatcar_production_qemu_uefi.sh
./flatcar_production_qemu_uefi.sh -i ignition.json \
  -p 4080-:4080,hostfwd=tcp::4443-:4443,hostfwd=udp::10000-:10000,hostfwd=tcp::2222 \
  -m 4096
  -nographic -snapshot
```
(Note that the `-snapshot` option runs the VM in ephemeral mode, i.e. all changes to the VM
 will be discarded when it powers down.
 This is useful for testing re-provisioning.)

# Operate Jitsi

Connect to https://meet.flatcar.org/, start a meeting.
A login will pop up if you try to create a room and are not authenticated; log in with the user/pass from the installation above.
After starting a meeting, you can (optionally) enable a lobby by clicking "..." -> "Security".

## Stream a meeting to youtube

You need to be logged in as a moderator in Jitsi in order to start a stream.
1. Go to https://studio.youtube.com/, click "Create" (upper right), select "Go live" from the drop-down
2. Configure the live stream, set a title, set visibility, etc.
3. Copy the stream key. DO NOT CLOSE THE TAB.
4. Go to https://meet.flatcar.org/ IN A SEPARATE TAB, create or join a room (https://meet.flatcar.org/OfficeHours is a favourite).
5. Click "..." (lower center, to the right), select "Start live stream"
6. Paste the stream key and click the "Start live stream" button.
7. Optionally, add a youtube widget to the Matrix channel so people there can watch the stream
   1. In Matrix, Click "room info" (upper right)
      1. Select "Add widgets, bridges & bots"
      2. Click "Add Integrations"
      3. Select "Youtube"
   2. In the Youtube live stream tab (you didn't close it, did you?)
      1. Click the "share" button (the bent arrow on the upper right hand side) and copy the video URL to clipboard
   3. In the Matrix youtube widget settings
      1. Paste the video URL
      2. Click Save and close the widget dialog
      3. Back in the room info, pin the youtube widget
      4. Finally, click "Set my room layout for everyone"

NOTE that when you are the moderator and you close the call / leave the room, the meeting will end for everybody, and a stream, if currently ongoing, will stop.

Stop the stream:

8. In the Jitsi meeting, click "..." (lower center, to the right), select "Stop live stream"
9. In the youtube live stream tab, click "End stream" (upper right)
10. If you pinned the stream in the Matrix channel, you can remove the pinning by removing the youtube widget from the channel.
    If you chose to not remove the pinned video, users on Matrix will have the opportunity to replay a recording of the meeting streamed.
