#!/bin/bash

function do_test()
{
    cd ../test_07
    python ../../cere configure --build_cmd="make -j2" --run_cmd="./gromacs -silent -deffnm gromacs -nice 0"
    python ../../cere dump --region=__extracted__fnbf_do_fnbf_232 --invocation=7948 -f
}

source ../source.sh