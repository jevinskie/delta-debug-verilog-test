#!/usr/bin/env bash

set -e -u -o pipefail

export VERILATOR_HARNESS=$PWD/main.cpp

time picire -i ./clock.sv --test ./classifier.sh --parallel -j $(nproc)
