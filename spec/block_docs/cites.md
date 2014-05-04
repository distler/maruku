Comment
*** Parameters: ***
require 'maruku/ext/math'; {:math_enabled => true}
*** Markdown input: ***

This is a single citation: \cite{Foo1993}.  This contains multiple citations: \cite{Foo1993,Bar, Baz22}.

*** Output of inspect ***
md_el(:document,[
        md_par(["This is a single citation: ",
		   md_el(:citation, [], {:cites=>["Foo1993"]}), ". This contains multiple citations: ",
		   md_el(:citation, [], {:cites=>["Foo1993", "Bar", "Baz22"]}), "."
		])
],{},[])
*** Output of to_html ***
<p>This is a single citation: <span class="maruku-citation">[Foo1993]</span>. This contains multiple citations: <span class="maruku-citation">[Foo1993,Bar,Baz22]</span>.</p>
*** Output of to_latex ***
This is a single citation: \cite{Foo1993}. This contains multiple citations: \cite{Foo1993,Bar,Baz22}.
