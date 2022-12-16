#!/usr/bin/env bash

set -e -u -o pipefail

bash -c "verilator_bin -Wno-fatal -O3 --cc $1 --top-module sim --exe -DPRINTF_COND=0 $VERILATOR_HARNESS $HOME/code/eda/litex/git/litex/litex/build/sim/core/veril.cpp libdylib.o modules.o pads.o parse.o sim.o --top-module sim -CFLAGS -I/opt/homebrew/include -Wno-WIDTH & wait" 2>&1 | grep -q "Segmentation fault"
