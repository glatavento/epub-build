#!/usr/bin/env bash

mkdir -p ../_out
pandoc --file-scope \
    --lua-filter=filter.lua \
    --shift-heading-level-by=1 \
    --epub-chapter-level=2 \
    --resource-path=src/markdown/imgs/ \
    --resource-path=src/markdown/src/ \
    -o ../_out/$(basename $PWD).epub \
    title.txt \
    extra-src/part1.md \
    src/markdown/src/ch01.md \
    src/markdown/src/ch02.md \
    src/markdown/src/ch03.md \
    src/markdown/src/ch04.md \
    src/markdown/src/ch05.md \
    src/markdown/src/ch06.md \
    src/markdown/src/ch07.md \
    src/markdown/src/ch08.md \
    extra-src/part2.md \
    src/markdown/src/ch09.md \
    src/markdown/src/ch10.md \
    src/markdown/src/ch11.md \
    src/markdown/src/ch12.md \
    src/markdown/src/ch13.md \
    src/markdown/src/ch14.md \
    extra-src/part3.md \
    src/markdown/src/ch15.md \
    src/markdown/src/ch16.md \
    src/markdown/src/ch17.md \
    src/markdown/src/ch18.md \
    src/markdown/src/ch19.md \
    src/markdown/src/ch20.md \
    extra-src/part4.md \
    src/markdown/src/ch21.md \
    src/markdown/src/ch22.md \
    src/markdown/src/ch23.md \
    src/markdown/src/ch24.md \
    src/markdown/src/ch25.md \
    src/markdown/src/ch26.md \
    src/markdown/src/ch27.md \
    src/markdown/src/ch28.md \
    extra-src/part5.md \
    src/markdown/src/ch29.md \
    src/markdown/src/ch30.md \
    src/markdown/src/ch31.md \
    src/markdown/src/ch32.md \
    src/markdown/src/ch33.md \
    extra-src/part6.md \
    src/markdown/src/ch34.md \
    src/markdown/src/ch35.md
