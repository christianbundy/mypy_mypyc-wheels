#!/usr/bin/env bash

set -euo pipefail

# configuration
arch="$(arch)"
sccache_version=0.5.4
sccache_install_location="/usr/bin"

# derived constants
sccache_name="sccache-v${sccache_version}-${arch}-unknown-linux-musl"
sccache_url="https://github.com/mozilla/sccache/releases/download/v${sccache_version}/${sccache_name}.tar.gz"

# download tarball, extract binary, and install
curl --location "$sccache_url" | tar --directory "$sccache_install_location" --strip-components 1 --gzip --extract "$sccache_name/sccache"
touch /tmp/sccache.log
cat /tmp/sccache

yum install -y llvm-toolset-7.0 || yum -v install -y llvm-toolset-7.0
