Test that divref works
*** Parameters: ***
require 'maruku/ext/math';{:html_math_engine => 'itex2mml'}
*** Markdown input: ***
bar

+--
### Baz
Foo
=--{#bar .num_baz}

+--
### Bar
Foo
=--{#fubar .num_bar}

Foo \ref{baz} bar. Bar \ref{baz} and Baz \ref{bar} and Bar \ref{baz}.

+--
### Bar
Foo
=--{#baz .num_bar}


*** Output of inspect ***
md_el(:document, [
	md_par("bar"),
	md_el(:div, [md_el(:header, "Baz", {:level=>3}), md_par("Foo")], {:label=>"bar", :type=>"baz", :num=>1}, [[:id, "bar"], [:class, "num_baz"]]),
	md_el(:div, [md_el(:header, "Bar", {:level=>3}), md_par("Foo")], {:label=>"fubar", :type=>"bar", :num=>1}, [[:id, "fubar"], [:class, "num_bar"]]),
	md_par([
		"Foo ",
		md_el(:divref, [], {:refid=>"baz"}),
		" bar. Bar ",
		md_el(:divref, [], {:refid=>"baz"}),
		" and Baz ",
		md_el(:divref, [], {:refid=>"bar"}),
		" and Bar ",
		md_el(:divref, [], {:refid=>"baz"}),
		"."
	]),
	md_el(:div, [md_el(:header, "Bar", {:level=>3}), md_par("Foo")], {:label=>"baz", :type=>"bar", :num=>2}, [[:id, "baz"], [:class, "num_bar"]])
])
*** Output of to_html ***
<p>bar</p>

<div id="bar" class="num_baz">
<h3 id="baz">Baz</h3>

<p>Foo</p>
</div>

<div id="fubar" class="num_bar">
<h3 id="bar">Bar</h3>

<p>Foo</p>
</div>

<p>Foo <a class="maruku-ref" href="#baz">2</a> bar. Bar <a class="maruku-ref" href="#baz">2</a> and Baz <a class="maruku-ref" href="#bar">1</a> and Bar <a class="maruku-ref" href="#baz">2</a>.</p>

<div id="baz" class="num_bar">
<h3 id="bar_2">Bar</h3>

<p>Foo</p>
</div>
