#!/bin/bash

function do_test()
{
make clean
make -j4 MODE="--dump --loop-to-dump=__extracted__tml_fluxk__1268"
LD_BIND_NOW=1 ./leslie3d < leslie3d.in

make clean
make -j4 INVITRO_CALL_COUNT=1 MODE="--replay=__extracted__tml_fluxk__1268"
./leslie3d < leslie3d.in
}

source ../source.sh
