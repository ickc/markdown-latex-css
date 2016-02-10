HTML Header:	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/styles/default.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/highlight.min.js"></script>
	<script>hljs.initHighlightingOnLoad();</script>  

This provides the use of amsthm in MultiMarkdown with the output of LaTeX and HTML via CSS. For LaTeX support, you need `mmd-load-amsthm.tex` from [ickc/peg-multimarkdown-latex-support: Default support files for generating LaTeX documents with MMD 3 through MMD 5](https://github.com/ickc/peg-multimarkdown-latex-support).
  
# Amsthm.css Usage #

If both `mmd-load-amsthm` & `amsthm.css` are used, and with the follow code in the md file, both HTML (hence the preview in MMD editors) and LaTeX output will show the correct result. The HTML version won't have auto-numbering:

```html
<!--\begin{theorem}--><div class="theorem">
...
<!--\end{theorem}--></div>
```

```html
<!--\begin{lemma}--><div class="lemma">
...
<!--\end{lemma}--></div>
```

```html
<!--\begin{proposition}--><div class="proposition">
...
<!--\end{proposition}--></div>
```

```html
<!--\begin{corollary}--><div class="corollary">
...
<!--\end{corollary}--></div>
```

```html
<!--\begin{definition}--><div class="definition">
...
<!--\end{definition}--></div>
```

```html
<!--\begin{conjecture}--><div class="conjecture">
...
<!--\end{conjecture}--></div>
```

```html
<!--\begin{example}--><div class="example">
...
<!--\end{example}--></div>
```

```html
<!--\begin{postulate}--><div class="postulate">
...
<!--\end{postulate}--></div>
```

```html
<!--\begin{postulate}--><div class="postulate">
...
<!--\end{postulate}--></div>
```

```html
<!--\begin{problem}--><div class="problem">
...
<!--\end{problem}--></div>
```

```html
<!--\begin{remark}--><div class="remark">
...
<!--\end{remark}--></div>
```

```html
<!--\begin{note}--><div class="note">
...
<!--\end{note}--></div>
```

```html
<!--\begin{case}--><div class="case">
...
<!--\end{case}--></div>
```

```html
<!--\begin{proof}--><div class="proof">
...
<!--\end{proof}--></div>
```

# References #

The setup followed this [LaTeX Theorem-like Environments for the Web - DrZ.ac](http://drz.ac/2013/01/17/latex-theorem-like-environments-for-the-web/).

There's a much more sophisticated approach in [Improved mathjax process: add the theorem environments and beautify HTML code preview · Issue #187 · benweet/stackedit](https://github.com/benweet/stackedit/issues/187).