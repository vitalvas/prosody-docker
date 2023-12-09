#!/bin/bash

set -e -o pipefail

export DEBIAN_FRONTEND=noninteractive
export USE_STATIC_REQUIREMENTS=1

apt update -qy
apt install -qy wget

wget -O /etc/apt/sources.list.d/prosody.sources https://prosody.im/files/prosody.sources
apt update -qy

apt install -y --no-install-recommends prosody lua-unbound lua-event lua-zlib lua-dbi-sqlite3 lua-dbi-postgresql lua-bitop ca-certificates ssl-cert
