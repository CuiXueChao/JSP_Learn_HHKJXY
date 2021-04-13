
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Second_Test</title>
</head>
<body>
request内置对象测试获取名字
<%
    String name= request.getParameter("userName");
    byte[] bytes = name.getBytes("iso8859-1");
    String s = new String(bytes, "utf-8");
    out.print(s);
%>
<a href="test2_forward.jsp">转发页面</a>
</body>
</html>
