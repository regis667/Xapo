#!/bin/bash

sha256sum bitcoin-0.21.0-x86_64-linux-gnu.tar.gz >> sum
echo "downloaded sha256sum: " && cat sum
echo "correct sha256sum: " && grep bitcoin-0.21.0-x86_64-linux-gnu.tar.gz SHA256SUMS.asc
tar -xf bitcoin-0.21.0-x86_64-linux-gnu.tar.gz
install -m 0755 -o root -g root -t /usr/local/bin bitcoin-22.0/bin/*
bitcoind -daemon
