#! /bin/sh

./RuntimeChecker ./benchmarks/$1
llvm-dis validation.bc
