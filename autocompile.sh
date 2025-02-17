#! /usr/bin/bash

while inotifywait -e modify slides.md; do
    ./compile.sh;
done