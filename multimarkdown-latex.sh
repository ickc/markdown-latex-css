#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$DIR"/css-source
find . -iname '*.scss' -exec cp '{}' "../_sass/" \;

cd $DIR
multimarkdown index.md > index.html

multimarkdown -t latex index.md > temp.tex
latexmk -pdf temp.tex
mv temp.pdf index.pdf
find . -iname 'temp.*' -exec mv '{}' ~/.Trash/ \;