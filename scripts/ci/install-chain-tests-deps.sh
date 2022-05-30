#! /usr/bin/env bash

set -euo pipefail

export DEBIAN_FRONTEND="noninteractive"
apt-get update && apt-get install -y software-properties-common
add-apt-repository -y ppa:serokell/tezos && apt-get update
apt-get install -y tezos-baking git curl jq wget make
wget -q -P /usr/bin https://gitlab.com/ligolang/ligo/-/jobs/1553142179/artifacts/raw/ligo && chmod +x /usr/bin/ligo
git clone https://gitlab.com/morley-framework/local-chain.git
