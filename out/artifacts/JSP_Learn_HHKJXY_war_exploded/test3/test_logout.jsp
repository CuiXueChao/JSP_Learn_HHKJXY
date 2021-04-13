<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/20
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Third_Test</title>
</head>
<body>
<%
    Object userName = session.getAttribute("userName");
    if (userName == null) {
        response.sendRedirect("test3_login.jsp");
    } else {
        session.removeAttribute("userName");
        response.sendRedirect("test3_login.jsp");
    }
%>

</body>
</html>
