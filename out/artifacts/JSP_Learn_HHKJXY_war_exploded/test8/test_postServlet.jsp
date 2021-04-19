<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/4/19
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Seventh_Test</title>
</head>
<body>
<%
    String contextPath = request.getContextPath();
%>
<form action="<%=contextPath%>/Third" method="post">
    <input type="submit" value="post方法测试">
</form>

<form action="<%=contextPath%>/Third" method="get">
    <input type="submit" value="get方法测试">
</form>
</body>
</html>
