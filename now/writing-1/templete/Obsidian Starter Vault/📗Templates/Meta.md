<%* if (tp.file.title.charAt(0) == "&") { %>
<%-tp.file.include("[[Book]]")%>
<%* } else if (tp.file.title.charAt(0) == "@") { %>
<%-tp.file.include("[[Article]]")%>
<%* } else if (tp.file.title.charAt(0) == "%") { %>
<%-tp.file.include("[[Podcast]]")%>
<%* } else if (tp.file.title.charAt(0) == "+") { %>
<%-tp.file.include("[[Videos]]")%>
<%* } else if (tp.file.title.charAt(0) == ")") { %>
<%-tp.file.include("[[Course]]")%>
<%* } else { %>
<%-tp.file.include("[[Permanent Note]]")%>
<%* } _%>
