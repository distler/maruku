Test that divref works
*** Parameters: ***
require 'maruku/ext/math';{:html_math_engine => 'itex2mml'}
*** Markdown input: ***
bar

+--
Foo
=--{#bar .num_div}

Foo\ref{baz} bar \ref{bar}
*** Output of inspect ***
md_el(:document, [
	md_par("bar"),
	md_el(:div,
		md_par("Foo"),
		{:label=>"bar", :type=>"div", :num=>1}
	),
	md_par([
		"Foo",
		md_el(:divref, [], {:refid=>"baz"}),
		" bar ",
		md_el(:divref, [], {:refid=>"bar"})
	])
])
*** Output of to_html ***
<p>bar</p>

<div id="bar" class="num_div">
<p>Foo</p>
</div>

<p>Foo\ref{baz} bar <a class="maruku-ref" href="#bar">1</a></p>