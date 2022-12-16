#!/usr/bin/env bash

set -e -u -o pipefail

verilator --timing --cc $1 --exe $HOME/code/debug-stuff/delta/delta-debug-verilog-test/simple-clocker/main.cpp -CFLAGS "-Wno-unknown-warning-option" &> /dev/null
make -C obj_dir -f Vclock.mk Vclock &> /dev/null
timeout --foreground 1 ./obj_dir/Vclock | grep -q "All Finished"
