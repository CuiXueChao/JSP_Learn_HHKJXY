<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/20
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Third_Test</title>
</head>
<body>
<%
    try {
        String userName = request.getParameter("userName");
        String userPass = request.getParameter("userPass");
    if(userName.trim().equals("")||userPass.trim().equals("")){
        response.sendRedirect("test3_login.jsp");
    }
    if (userPass.endsWith("123")) {
        session.setAttribute("userName", userName);
        response.sendRedirect("test3_index.jsp");
    } else {
        response.sendRedirect("test3_login.jsp");
    }
    }catch (Exception e){
        response.sendRedirect("test3_login.jsp");
    }
%>

</body>
</html>
