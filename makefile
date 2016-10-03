SHELL := /bin/bash

MD := $(wildcard *.md)
MD2HTML := $(patsubst %.md,%.html,$(MD))
MD2PDF := $(patsubst %.md,%.pdf,$(MD))

submodulePATH:=submodule/pandoc-amsthm/
filterPATH:=$(submodulePATH)bin/
includePATH:=$(submodulePATH)template/include/
pandocarc := --chapters --toc --toc-depth=6 -N --normalize -V linkcolorblue -V citecolor=blue -V urlcolor=blue -V toccolor=blue --filter=$(filterPATH)pandoc-amsthm.py

all: _sass/_amsthm.scss $(MD2HTML) $(MD2PDF)

%.html: %.md
	echo -e "---\n---\n" > $@
	pandoc $(pandocarc) -c https://ickc.github.io/markdown-latex-css/css/markdown-latex-lmodern.css -c https://ickc.github.io/markdown-latex-css/fonts/fonts.css -H js/mathjax/load-mathjax-cdn.min.html --mathjax $< >> $@
%.pdf: %.md
	cat $(includePATH)pandoc-amsthm.yml $< | sed 's/LaTeX/\\LaTeX\\/g' | pandoc $(pandocarc) --include-in-header=<(pandoc --template=$(includePATH)pandoc-amsthm.latex $(includePATH)pandoc-amsthm.yml) -M documentclass=memoir -M classoption=article -o $@

_sass/_amsthm.scss: $(includePATH)pandoc-amsthm.html
	pandoc --template=$< $(includePATH)pandoc-amsthm.yml | sed -e 's/<style type="text\/css">//g' -e 's/<\/style>//g' > $@

clean:
	rm -f _sass/_amsthm.scss $(MD2HTML) $(MD2PDF)

# update submodule
update:
	git submodule foreach git pull origin master
	git commit -am "Pulled down update to submodules"
