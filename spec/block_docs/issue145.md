https://github.com/bhollis/maruku/issues/145 - Maruku 0.7.3 crashes on itex example.
*** Parameters: ***
require 'maruku/ext/math';{:html_math_engine => 'itex2mml'}
*** Markdown input: ***
\begin{c}\label{DoubleNegationMonad}
\end{d}
\begin{proof}
Immediate from \ref{Monads}

*** Output of inspect ***
md_el(:document, md_par([
	"\\begin{c}\\label{DoubleNegationMonad} \\end{d} \\begin{proof} Immediate from ",
	md_el(:divref, [], {:refid=>"Monads"})
]),{},[])
*** Output of to_html ***
<p>\begin{c}\label{DoubleNegationMonad} \end{d} \begin{proof} Immediate from \ref{Monads}</p>
