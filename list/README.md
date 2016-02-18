---
layout: compress
---

# Nested List #
list.css supports different styles in different levels of a nested list (up to level 6 [^ if you need more than 6 levels, probably it should be simplified. But there can always be exception.])

1. ordered list:
	- In ordered list, up to level 4, the list.css provides the same numbering as the LaTeX output.
	- Beyond that the LaTeX will complain the nesting is too deep. Something need to be done on the LaTeX side (usually you repeat the nesting, i.e. level 5 use the numbering in level 1, etc.) **or** you make the level 5 as an unordered list and you can start to use ordered list again in level 6
	- 2 more levels is given (unrelated to LaTeX output because it is up to level 4 only) i.e. totally of 6 levels
2. unordered list:
	- It is not replicating the LaTeX result because those bullets are not available, unless you want to create images to mimic the LaTeX output and use that as the style.
	- It repeat the use of the only 3 bullets available twice to achieve a total level of 6.

# References #

- [CSS list-style-type property](http://www.w3schools.com/cssref/pr_list-style-type.asp)
- Also see: [CSS Styling Lists](http://www.w3schools.com/css/css_list.asp), [HTML li type Attribute](http://www.w3schools.com/tags/att_li_type.asp)