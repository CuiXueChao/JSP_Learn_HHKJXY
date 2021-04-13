<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/17
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Third_Test</title>
</head>
<body>
<center>
    <%
        String sessonId = session.getId();
        out.print(sessonId);
    %>

    <br>
    <a href="test3_session.jsp">session</a><br>
    <a href="test3_session1.jsp">session1</a>
</center>
</body>
</html>
