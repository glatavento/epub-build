#!/usr/bin/env bash

mkdir -p ../_out
pandoc --file-scope \
    --lua-filter=filter.lua \
    -o ../_out/$(basename $PWD).epub \
    title.txt \
    src/README.md \
    src/0*.md \
    src/1*.md
