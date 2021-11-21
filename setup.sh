#!/bin/bash

sha256sum https://bitcoincore.org/bin/bitcoin-core-0.21.0/SHA256SUMS.asc >> sum
echo "downloaded sha256sum: " && cat sum
echo "correct sha256sum: " && grep bitcoin-0.21.0-aarch64-linux-gnu.tar.gz.1 SHA256SUMS.asc
