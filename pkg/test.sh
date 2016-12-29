#!/bin/bash
set -e
cd "$(dirname $0)"/../examples
for dir in simple modules; do
    (
        cd $dir
        make clean
        make
        ./app.byte
        ./app.native
    )
done
