#!/usr/bin/env bash

set -e -u -o pipefail

export VERILATOR_HARNESS=$PWD/sim_init.cpp

wget -N https://github.com/antlr/grammars-v4/raw/master/verilog/verilog/VerilogLexer.g4
wget -N https://github.com/antlr/grammars-v4/raw/master/verilog/verilog/VerilogParser.g4

time picireny -i ./unified.sv --test ./classifier.sh --grammar VerilogLexer.g4 VerilogParser.g4 --start source_text --parallel -j $(nproc)
