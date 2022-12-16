#!/usr/bin/env bash

set -e -u -o pipefail

export VERILATOR_HARNESS=$PWD/main.cpp

wget -N https://github.com/antlr/grammars-v4/raw/master/verilog/systemverilog/SystemVerilogLexer.g4
wget -N https://github.com/antlr/grammars-v4/raw/master/verilog/systemverilog/SystemVerilogParser.g4

time picireny -i ./clock.sv --test ./classifier.sh --grammar SystemVerilogLexer.g4 SystemVerilogParser.g4 --start source_text --parallel -j $(nproc)
