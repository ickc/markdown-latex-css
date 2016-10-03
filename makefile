all: _sass/_amsthm.scss

_sass/_amsthm.scss: submodule/pandoc-amsthm/template/include/pandoc-amsthm.html submodule/pandoc-amsthm/template/include/pandoc-amsthm.yml
	pandoc --template=submodule/pandoc-amsthm/template/include/pandoc-amsthm.html submodule/pandoc-amsthm/template/include/pandoc-amsthm.yml -o $@

clean:
	rm -f _sass/_amsthm.scss
