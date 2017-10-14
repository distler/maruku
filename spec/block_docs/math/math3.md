
*** Parameters: ***
require 'maruku/ext/math'
{:math_numbered => ['\\['], :html_math_engine => 'itex2mml', :html_math_generate_ids => true}
*** Markdown input: ***

\[
	\alpha
\]

\begin{equation}
	P \colon A\times A \mathop{⇸} A
\end{equation}

\begin{equation} \beta
\end{equation}


\begin{equation} \gamma \end{equation}
*** Output of inspect ***
md_el(:document,[
	md_el(:equation,[],{:label=>"eq1",:math=>"\n\t\\alpha\n\n",:num=>1},[]),
	md_el(:equation,[],{:label=>nil,:math=>"\n\tP \\colon A\\times A \\mathop{⇸} A\n\n",:num=>nil},[]),
	md_el(:equation,[],{:label=>nil,:math=>" \\beta\n\n",:num=>nil},[]),
	md_el(:equation,[],{:label=>nil,:math=>" \\gamma ",:num=>nil},[])
],{},[])
*** Output of to_html ***
<div class="maruku-equation" id="eq:eq1"><span class="maruku-eq-number">(1)</span><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" id="mathml_cc28fba3bd2ad745c129410a160b7a595845ca3f_1" class="maruku-mathml"><semantics><mrow><mi>α</mi></mrow><annotation encoding="application/x-tex">
	\alpha

</annotation></semantics></math></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" id="mathml_cc28fba3bd2ad745c129410a160b7a595845ca3f_2" class="maruku-mathml"><semantics><mrow><mi>P</mi><mo lspace="verythinmathspace">:</mo><mi>A</mi><mo>×</mo><mi>A</mi><mo lspace="thinmathspace" rspace="thinmathspace">⇸</mo><mi>A</mi></mrow><annotation encoding="application/x-tex">
	P \colon A\times A \mathop{⇸} A

</annotation></semantics></math></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" id="mathml_cc28fba3bd2ad745c129410a160b7a595845ca3f_3" class="maruku-mathml"><semantics><mrow><mi>β</mi></mrow><annotation encoding="application/x-tex"> \beta

</annotation></semantics></math></div><div class="maruku-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" id="mathml_cc28fba3bd2ad745c129410a160b7a595845ca3f_4" class="maruku-mathml"><semantics><mrow><mi>γ</mi></mrow><annotation encoding="application/x-tex"> \gamma </annotation></semantics></math></div>
*** Output of to_latex ***
\begin{equation}
\alpha
\label{eq1}\end{equation}
\begin{displaymath}
P \colon A\times A \operatorname{⇸} A
\end{displaymath}
\begin{displaymath}
\beta
\end{displaymath}
\begin{displaymath}
\gamma
\end{displaymath}
*** Output of to_md ***

*** Output of to_s ***

