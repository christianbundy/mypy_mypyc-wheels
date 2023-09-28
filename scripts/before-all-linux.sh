#!/usr/bin/env bash

set -euo pipefail

sccache_version=0.5.4
sccache_url="https://github.com/mozilla/sccache/releases/download/v${sccache_version}/sccache-v${sccache_version}-$(arch)-unknown-linux-musl.tar.gz"

cd /tmp

curl --output sccache.tar.gz --location "$sccache_url"
tar -zxf sccache.tar.gz
cp sccache/sccache /usr/bin
