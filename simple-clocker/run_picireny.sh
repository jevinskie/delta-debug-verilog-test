#!/usr/bin/env bash

set -e -u -o pipefail

export VERILATOR_HARNESS=$PWD/main.cpp
time picireny -i ./clock.sv --test ./classifier.sh --grammar ../../git/grammars-v4/verilog/systemverilog/SystemVerilogLexer.g4 ../../git/grammars-v4/verilog/systemverilog/SystemVerilogParser.g4 --start source_text --parallel -j $(nproc)