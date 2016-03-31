---
layout: compress
---

Using CSS to make the MultiMarkdown to HTML output mimics the MultiMarkdown to LaTeX output.

# CSS #

## Custom CSS ##

The followings are put in `/css-source/`:

1. `amsthm`: Mimics amsthm package in MultiMarkdown via CSS. See the [README in the corresponding folder](css-source/amsthm/README.md). For MultiMarkdown to LaTeX with amsthm, see [ickc/peg-multimarkdown-latex-support: Default support files for generating LaTeX documents with MMD 3 through MMD 5](https://github.com/ickc/peg-multimarkdown-latex-support).
2. `list`: Replicated the different type of list in different levels of a *nested list* in LaTeX. See the [README in the corresponding folder](css-source/list/README.md)
3. `heading` (See [heading](css-source/heading/)):
	1. Heading counter [^ [Using CSS counters - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Lists_and_Counters/Using_CSS_counters)]: Replicate the numbering in headings.  
	2. ToC counter. Similar to heading counter, it adds the numbering to the TOC.  
4. `table`: Adapted from MultiMarkdown Composer 3 with slight modification.
5. `system-fonts`: a tiny font css setting the main font as "Gill Sans" and code font as "Consolas", with multiple fallback including Chinese fonts.

A combined css including the related one in the next section is in [css/](https://ickc.github.io/multimarkdown-latex-css/css/multimarkdown-latex.css). See [demo of MMD to HTML output](https://ickc.github.io/multimarkdown-latex-css) and [demo of MMD to LaTeX](https://ickc.github.io/multimarkdown-latex-css/index.pdf) [^ both of which uses the [MultiMarkdown 5](http://fletcherpenney.net/multimarkdown/) to generate, not Jekyll's kramdown]

## Fonts (Latin Modern) ##

A `font.css` is given in [fonts/fonts.css](http://ickc.github.io/multimarkdown-latex-css/fonts/fonts.css).

It loads the Latin Modern Roman as the main fonts and Latin Modern Mono as the code font. The font is chosen to make it looks as close to the LaTeX's as possible. A couple of fallback fonts as well as some Chinese system fonts are added for compatibility.

They are not included in the combined css mentioned above, since it is huge. If you need to load it, load it after the combined css.

Links to Latin Modern fonts:

- [LM downloads — GUST](http://www.gust.org.pl/projects/e-foundry/latin-modern/download)
- [Latin Modern --- Font Squirrel](http://www.fontsquirrel.com/fonts/list/find_fonts?q%5Bterm%5D=latin+modern&q%5Bsearch_check%5D=Y)

## CSS From Marked 2 ##

- `/css-marked2/` are extracted from [Marked2](http://marked2app.com). The license of each individual CSS are in the files itself.
- `/css-marked2-preview/` contains previews of some of the css

# JS #

## Setup Files ##

There's 2 JS setup in `/js-setup/` as well:

1. [MathJax](js-setup/mathjax-setup/load-mathjax-cdn.html): loading
	1. Cancel extension
	2. equation numbering
	3. a semi-finished Physics extension I wrote
	4. siunitx
2. [Highlight.js](js-setup/highlight-setup/load-highlight-cdn.min.html)

You can copy the code and put it in a metadata field `HTML Header` in MultiMarkdown.

# ABC #

`/js/` contains abc music notation js

# Other OS X Tools #

In `/other-osx-tools/`, some OS X tools from [MultiMarkdown](http://fletcherpenney.net/multimarkdown/download/) are put here for quick installation:

- /QuickLook/ includes 3 different Mac QuickLook generators recommended by [fletcherpenney.net](http://fletcherpenney.net/multimarkdown/download/).
  - in my own comparison, it seems the official one (MMD-QuickLook 5.0.1) is the best, albeit the author himself recommended the proprietary version (which doesn't have ToC support yet).
- /Spotlight/ contains the mdimporter such that any `.md` files will be indexed by Spotlight. [^ Probably I got it from [here](http://brettterpstra.com/2011/10/18/fixing-spotlight-indexing-of-markdown-content/)]
- /Styles/ contains variants of ByWords styles for MultiMarkDown Composer 2. See the license in the file.