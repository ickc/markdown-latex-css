Using CSS to make the MultiMarkdown to HTML output mimics the MultiMarkdown to LaTeX output.

So far there's 3 CSSs:

1. amsthm: Mimics amsthm package in MultiMarkdown via CSS. See the [README in the corresponding folder](amsthm/README.md). For MultiMarkdown to LaTeX with amsthm, see [ickc/peg-multimarkdown-latex-support: Default support files for generating LaTeX documents with MMD 3 through MMD 5](https://github.com/ickc/peg-multimarkdown-latex-support).
2. Nested list: Replicated the different type of list in different levels of a nested list in LaTeX. See the [README in the corresponding folder](list/README.md)
3. Heading counter [^ [Using CSS counters - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Lists_and_Counters/Using_CSS_counters)]: Replicate the numbering in headings. See [heading](heading/).

A combined css including the related one in the next section is in [combined-css/](https://ickc.github.io/multimarkdown-latex-css/combined-css/multimarkdown-latex.css). See [demo in HTML](https://ickc.github.io/multimarkdown-latex-css) and [demo in LaTeX](https://ickc.github.io/multimarkdown-latex-css/index.pdf)