#!/usr/bin/env bash

mkdir -p ../_out
pandoc --file-scope \
    --resource-path=src/ \
    --lua-filter=filter.lua \
    -o ../_out/$(basename $PWD).epub \
    title.txt \
    src/CppCoreGuidelines-zh-CN.md
