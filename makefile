SHELL = /bin/bash

MD = $(wildcard *.md)
MD2HTML = $(patsubst %.md, %.html, $(MD))
MD2PDF = $(patsubst %.md, %.pdf, $(MD))

amsthmPATH = submodule/pandoc-amsthm
filterPATH = $(amsthmPATH)/bin
includePATH = $(amsthmPATH)/template/include
pandocarc = --chapters --toc --toc-depth=6 -N --normalize -V linkcolorblue -V citecolor=blue -V urlcolor=blue -V toccolor=blue --filter=$(filterPATH)/pandoc-amsthm.py

LIST = $(wildcard css/*.list)
CSS = css/_amsthm.css $(patsubst %.list, %.css, $(LIST))

# targets ##############################################################

all: css docs

css: $(CSS) normalize

docs: $(MD2HTML) $(MD2PDF)

clean:
	rm -f $(CSS) $(MD2HTML) $(MD2PDF)

# rules ################################################################

%.html: %.md
	echo -e "---\n---\n" > $@
	pandoc $(pandocarc) -c https://ickc.github.io/markdown-latex-css/css/markdown-latex-lmodern.css -c https://ickc.github.io/markdown-latex-css/fonts/fonts.css -H js/mathjax/setup-mathjax-cdn.html --mathjax $< >> $@

%.pdf: %.md
	cat $(includePATH)/default.yml $< | sed 's/LaTeX/\\LaTeX\\/g' | pandoc $(pandocarc) --include-in-header=$(includePATH)/default.tex -M documentclass=memoir -M classoption=article -o $@

css/_amsthm.css: $(includePATH)/default.html
	sed -e 's/<style type="text\/css">//g' -e 's/<\/style>//g' $< > $@

# combined CSS
%.css: %.list
	printf "%s\n" '@charset "UTF-8";' > $@
	sed 's/^\(.*\)$$/css\/_\1\.css/g' $< | xargs cat | sed 's/@charset "UTF-8";//g' >> $@

# helpers ##############################################################

# update submodule
update:
	git submodule update --recursive --remote

## Normalize white spaces:
### 1. Add 2 trailing newlines
### 2. delete all CONSECUTIVE blank lines from file except the first; deletes all blank lines from top and end of file; allows 0 blanks at top, 0,1,2 at EOF
### 3. delete trailing whitespace (spaces, tabs) from end of each line
normalize:
	find . \! -path '*/submodule/*' -iname "*.css" | xargs -i -n1 -P8 bash -c 'printf "\n\n" >> "$$0" && sed -i -e '"'"'/./,/^$$/!d'"'"' -e '"'"'s/[ \t]*$$//'"'"' $$0' {}
