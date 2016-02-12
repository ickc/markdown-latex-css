Using CSS to make the MultiMarkdown to HTML output mimics the MultiMarkdown to LaTeX output.

So far there's 2 CSSs:

1. amsthm: Mimics amsthm package in MultiMarkdown via CSS. See the [README in the corresponding folder](amsthm/README.md). For MultiMarkdown to LaTeX with amsthm, see [ickc/peg-multimarkdown-latex-support: Default support files for generating LaTeX documents with MMD 3 through MMD 5](https://github.com/ickc/peg-multimarkdown-latex-support).
2. Nested list: Replicated the different type of list in different levels of a nested list in LaTeX. See the [README in the corresponding folder](list/README.md)

A combined css including the related one in the next section is in [combined-css/multimarkdown-latex.css](combined-css/multimarkdown-latex.css)

# Todo #

Using CSS counter to replicate "ordered headings" (e.g. Chapter 1, section 2, etc.)

Related: [heading](heading/) (see 1st reference below)

References:

- [Using CSS counters - CSS | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Lists_and_Counters/Using_CSS_counters)  
- [Can I get the CSS counter value of the parent? - Stack Overflow](http://stackoverflow.com/questions/8187131/can-i-get-the-css-counter-value-of-the-parent/8187267#8187267)  
- [css3 - CSS counter-reset on nested list - Stack Overflow](http://stackoverflow.com/questions/31539617/css-counter-reset-on-nested-list)
