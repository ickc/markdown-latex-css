#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

#Copy scss to /_sass/
cd "$DIR"/css-source
find . -iname '*.scss' -exec cp '{}' "../_sass/" \;

#build index.html
cd $DIR
multimarkdown index.md > index.html

#build index.pdf
multimarkdown -t latex index.md > temp.tex
latexmk -pdf temp.tex
mv temp.pdf index.pdf
find . -iname 'temp.*' -exec mv '{}' ~/.Trash/ \;

#jekyll build
JEKYLL_ENV=production bundle exec jekyll build

#copy multimarkdown-latex.css to other repositories that use it
cp _site/css/multimarkdown-latex.css ../bible-study-on-apocalypse/_includes/multimarkdown-latex.css
cp _site/css/multimarkdown-latex.css ../bible-study-on-matthew/_includes/multimarkdown-latex.css
cp _site/css/multimarkdown-latex.css ../churchinhk.github.io/_includes/multimarkdown-latex.css
cp _site/css/multimarkdown-latex.css ../open-fonts-for-ios/_includes/multimarkdown-latex.css