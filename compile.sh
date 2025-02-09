#!/usr/bin/bash

pandoc -t revealjs -s -o index.html slides.md -V revealjs-url=https://unpkg.com/reveal.js/ --include-in-header=slides.css -V theme=dracula
