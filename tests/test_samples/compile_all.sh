#!/bin/bash

SCRIPT=./compile.sh

if [ "$1" == "vm" ]; then
    OUT="../../../vm/shared/"
else
    OUT="../../../binaries-private/tests/i386/patchrex/"
fi

rm $OUT/indirect_call_test_O0; $SCRIPT indirect_call_test.c -O0 -o $OUT/indirect_call_test_O0
rm $OUT/indirect_call_test_Ofast; $SCRIPT indirect_call_test.c -Ofast -o $OUT/indirect_call_test_Ofast
rm $OUT/indirect_call_test_Oz; $SCRIPT indirect_call_test.c -Oz -o $OUT/indirect_call_test_Oz
rm $OUT/indirect_jump_test_O0; $SCRIPT indirect_jump_test.c -O0 -o $OUT/indirect_jump_test_O0
rm $OUT/indirect_jump_test_Ofast; $SCRIPT indirect_jump_test.c -Ofast -o $OUT/indirect_jump_test_Ofast
rm $OUT/indirect_jump_test_Oz; $SCRIPT indirect_jump_test.c -Ofast -o $OUT/indirect_jump_test_Oz

