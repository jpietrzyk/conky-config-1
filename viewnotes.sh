#!/bin/bash

cat ~/notes.txt | sed 's/^/ \${color #555753}x  \$color /g' | fold -w 200 -s | tee ./.cache/TODO.txt
