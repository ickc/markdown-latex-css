MathJax.Ajax.config.path["Contrib"] = "https://cdn.mathjax.org/mathjax/contrib";
MathJax.Hub.Register.StartupHook("TeX Jax Ready",function () {
	MathJax.Hub.Insert(MathJax.InputJax.TeX.Definitions.macros,{
		cancel: ["Extension","cancel"],
		bcancel: ["Extension","cancel"],
		xcancel: ["Extension","cancel"],
		cancelto: ["Extension","cancel"]
	});
});
MathJax.Hub.Config({
	TeX: {
		equationNumbers: { autoNumber: "AMS"},
		extensions: ["[Contrib]/physics/physics.js"]
	}
});