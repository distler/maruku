Adds CDATA only when necessary.
NOTE: CDATA is output because we use XHTML - for HTML mode it should be omitted.
*** Parameters: ***
{}
*** Markdown input: ***
<script>
  var x = true && true;
</script>

<script>
  var x = true;
</script>

<script>foo && bar</script>

<script>alert('foo');</script>

<style type="text/css">
  p > .highlight {
    color: red;
    background-image: url('/foo?bar&baz');
  }
</style>

<style type="text/css">
  .highlight {
    color: red;
  }
</style>
*** Output of inspect ***
md_el(:document, [
     md_html("<script><!--//--><![CDATA[//><!--\n  var x = true && true;\n//--><!]]></script>"),
     md_html("<script>\n  var x = true;\n</script>"),
	 md_html("<script><!--//--><![CDATA[//><!--\nfoo && bar\n//--><!]]></script>"),
	 md_html("<script>alert('foo');</script>"),
	 md_html("<style type=\"text/css\">/*<![CDATA[*/\n  p > .highlight {\n    color: red;\n    background-image: url('/foo?bar&baz');\n  }\n/*]]>*/</style>"),
	 md_html("<style type=\"text/css\">\n  .highlight {\n    color: red;\n  }\n</style>")
])
*** Output of to_html ***
<script><!--//--><![CDATA[//><!--
  var x = true && true;
//--><!]]></script><script>
  var x = true;
</script><script><!--//--><![CDATA[//><!--
foo && bar
//--><!]]></script><script>alert('foo');</script><style type="text/css">/*<![CDATA[*/
  p > .highlight {
    color: red;
    background-image: url('/foo?bar&baz');
  }
/*]]>*/</style><style type="text/css">
  .highlight {
    color: red;
  }
</style>
