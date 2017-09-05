Using CSS to make the Markdown to HTML output mimics the Markdown to LaTeX output.

See demo in <https://ickc.github.io/markdown-latex-css/>.

# CSS #

## Custom CSS ##

The followings are put in [`css/`](css/):

1. `amsthm`: See [ickc/pandoc-amsthm](https://github.com/ickc/pandoc-amsthm)
2. `list`: Replicated the different type of styles in different levels of a *nested list* in LaTeX.[^list]
3. `heading` and `toc`:
	1. Heading counter: Replicate the numbering in headings.  
	2. ToC counter. Similar to heading counter, it adds the numbering to the TOC.  
4. `table`: Adapted from MultiMarkdown Composer 3 with slight modification.
5. `system-fonts`: a tiny font css setting the main font as "Gill Sans" and code font as "Consolas", with multiple fallback including Chinese fonts.
	1. `system-fonts-lmodern`: Expect "Latin Modern Roman" and "Latin Modern Mono" exists in system fonts. Otherwise, see [Fonts (Latin Modern)].
6. `mmdc`: make it looks closer to MultiMarkdown Composer 3's output CSS with minor modification.

The most common combinations of CSSes are combined and provided in the `css/` in the [GitHub Releases](https://github.com/ickc/markdown-latex-css/releases/latest). They can be retrieved through the jsdelivr like this: <https://cdn.jsdelivr.net/gh/ickc/markdown-latex-css/css/pandoc-latex-lmodern.min.css>, <https://cdn.jsdelivr.net/gh/ickc/markdown-latex-css/fonts/fonts.min.css>. Read more from [Features - jsDelivr](https://www.jsdelivr.com/features) and get them from [ickc/markdown-latex-css CDN by jsDelivr - A free, fast, and reliable Open Source CDN](https://www.jsdelivr.com/package/gh/ickc/markdown-latex-css).

## Fonts (Latin Modern) ##

A `font.css` is given in [fonts/fonts.css](https://cdn.jsdelivr.net/gh/ickc/markdown-latex-css/fonts/fonts.min.css) which loads web fonts rather than system fonts.

It loads the Latin Modern Roman as the main fonts and Latin Modern Mono as the code font. The font is chosen to make it looks as close to the LaTeX's as possible. A couple of fallback fonts as well as some Chinese system fonts are added for compatibility.

They are not included in the combined css mentioned above, since it is huge. If you need to load it, load it after the combined css.

# JS #

## Setup Files ##

There's 2 JS setup in `/js/` as well:

1. [`setup-mathjax-cdn.html`](js/setup-mathjax-cdn.html): setup MathJax
	1. Cancel extension
	2. equation numbering
	3. a semi-finished Physics extension I wrote
	4. siunitx
2. [`load-mathjax-cdn.html`](js/load-mathjax-cdn.html): load MathJax itself. It should be included after the `setup-mathjax-cdn`.

# References #

- [CSS list-style-type property](http://www.w3schools.com/cssref/pr_list-style-type.asp)
	- Also see: [CSS Styling Lists](http://www.w3schools.com/css/css_list.asp), [HTML li type Attribute](http://www.w3schools.com/tags/att_li_type.asp)
- [Using CSS counters - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Lists_and_Counters/Using_CSS_counters)  
- [LM downloads --- GUST](http://www.gust.org.pl/projects/e-foundry/latin-modern/download)
- [Latin Modern --- Font Squirrel](http://www.fontsquirrel.com/fonts/list/find_fonts?q%5Bterm%5D=latin+modern&q%5Bsearch_check%5D=Y)

[^list]: `_list.css` supports different styles in different levels (up to 6 levels) of a nested list.

	1. ordered list:
		- In ordered list, up to level 4, the `_list.css` provides the same styling as the LaTeX output. 2 more styling is given in level 5 & 6, but are unrelated to LaTeX's styling.
		- LaTeX will have error and complain the nesting is too deep beyond level 4. Something need to be done on the LaTeX's side (*e.g.* you repeat the nesting, *i.e.* level 5 use the numbering in level 1, etc.) *or* you can make the level 5 as an unordered list to get around the issue.
	- unordered list:
		- It is not replicating the LaTeX result because those bullets are not available in CSS.
		- It repeat the use of 3 styles twice to achieve a total level of 6.

# Notes for Developers

- In the past, this is delivered through the GitHub Pages service. It has a limitation that GitHub Pages server set `CacheControl: max-age=600`. So it will reload after 10 min. Bad when using the web fonts. It has been changed since then, but I keep a copy of the old delivery method at the `gh-pages` branch in case somewhere someone has pointed their documents to these links.

- Now, jsdelivr is used. i.e. a proper CDN is used and everybody will be happy.

- Because of this, I no longer rely on the SCSS compressor to combine the CSS and compress them. Instead, I use the makefile with instruction given in the `css-list/` directory to generates the combined CSS, and rely on jsdelivr's auto-minification to minify them. The `.txt` files are simply list of CSS to be included. Try `make css -j` to see what they will do.

- `make v%`: e.g. `make v1.1.0` will automatically make the combined CSSes and create a git tag `v1.1.0`, and jsdelivr will automatically retrieve it.
