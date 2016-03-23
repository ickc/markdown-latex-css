---
layout: compress
---

Using CSS to make the MultiMarkdown to HTML output mimics the MultiMarkdown to LaTeX output.

# CSS #

1. amsthm: Mimics amsthm package in MultiMarkdown via CSS. See the [README in the corresponding folder](amsthm/README.md). For MultiMarkdown to LaTeX with amsthm, see [ickc/peg-multimarkdown-latex-support: Default support files for generating LaTeX documents with MMD 3 through MMD 5](https://github.com/ickc/peg-multimarkdown-latex-support).
2. Nested list: Replicated the different type of list in different levels of a nested list in LaTeX. See the [README in the corresponding folder](list/README.md)
3. Heading counter [^ [Using CSS counters - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Lists_and_Counters/Using_CSS_counters)]: Replicate the numbering in headings. See [heading](heading/).  
4. ToC counter. Similar to heading counter, it adds the numbering to the TOC.  
5. mmdc-table-improvement: improved the padding around the cells of the table style used in MultiMarkdown Composer 3.
6. fonts: a tiny font css setting the main font as "Gill Sans" and code font as "Consolas", with multiple fallback including Chinese fonts.
	1. fonts-lmodern(not included in the combined css mentioned below, since it is huge. And load it after the combined css below): Latin Modern Roman is loaded as the main fonts and Latin Modern Mono is loaded as the code font. See [LM downloads — GUST](http://www.gust.org.pl/projects/e-foundry/latin-modern/download) and [Latin Modern --- Font Squirrel](http://www.fontsquirrel.com/fonts/list/find_fonts?q%5Bterm%5D=latin+modern&q%5Bsearch_check%5D=Y). The font is so choose to make it looks as close to the LaTeX's as possible. A couple of fallback options including some Chinese system fonts are added for compatibility.

A combined css including the related one in the next section is in [combined-css/](https://ickc.github.io/multimarkdown-latex-css/combined-css/multimarkdown-latex.css). See [demo of MMD to HTML output](https://ickc.github.io/multimarkdown-latex-css) and [demo of MMD to LaTeX](https://ickc.github.io/multimarkdown-latex-css/index.pdf) [^ both of which uses the [MultiMarkdown 5](http://fletcherpenney.net/multimarkdown/) to generate, not Jekyll's kramdown]

# JS Setup #

There's 2 JS setup here as well:

1. [MathJax](mathjax-setup/load-mathjax-cdn.html): loading
	1. Cancel extension
	2. equation numbering
	3. a semi-finished Physics extension I wrote
	4. siunitx
2. [Highlight.js](highlight-setup/load-highlight-cdn.min.html)

You can copy the code from there and put it in a metadata named `HTML Header` in MultiMarkdown.