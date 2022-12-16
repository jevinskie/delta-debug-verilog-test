#!/usr/bin/env bash

set -e -u -o pipefail

export VERILATOR_HARNESS=$PWD/sim_init.cpp

time picire -i ./unified.v --test ./classifier.sh --parallel -j $(nproc)
