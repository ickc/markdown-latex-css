#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

#build index.html
cd ..
multimarkdown index.md > index.html

#build index.pdf
multimarkdown -t latex index.md > temp.tex
latexmk -pdf temp.tex
mv temp.pdf index.pdf
find . -iname 'temp.*' -exec mv '{}' ~/.Trash/ \;

#jekyll build
JEKYLL_ENV=production bundle exec jekyll build
