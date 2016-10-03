_sass/_amsthm.scss: submodule/pandoc-amsthm/template/include/pandoc-amsthm.html submodule/pandoc-amsthm/template/include/pandoc-amsthm.yml
	pandoc --template=submodule/pandoc-amsthm/template/include/pandoc-amsthm.html submodule/pandoc-amsthm/template/include/pandoc-amsthm.yml | sed -e 's/<style type="text\/css">//g' -e 's/<\/style>//g' > $@
clean:
	rm -f _sass/_amsthm.scss
