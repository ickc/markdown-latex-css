#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

#Copy scss to /_sass/
cd css-source
find . -iname '*.scss' -exec cp '{}' "../_sass/" \;

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
