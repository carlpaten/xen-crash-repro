#!/bin/sh

gcc -nostdlib -T crust.lds start.S
xl create -p crust.cfg 'name="bug-repro"' 'kernel="a.out"' 'memory=32'
gdbsx -a `xl domid bug-repro` 64 9999 &

# uncomment this line to crash
#gdb -ex "target remote localhost:9999"
