<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/20
  Time: 10:57
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
    }
    String s1 = String.valueOf(userName);
    String userName1 = (String) userName;
    byte[] bytes = s1.getBytes("iso8859-1");
    String s = new String(bytes, "utf-8");
%>
<br>
<br>
<center>
    <h3>主页</h3>
    欢迎：<%=s%>!!
    <br><br>
    <a href="test3_page1.jsp">page1</a><br><br>
<%--    <a href="test3_page2.jsp">page2</a><br><br>--%>
<%--    <a href="test3_page3.jsp">page3</a><br><br>--%>
    <br><br>
    <a href="test_logout.jsp">退出</a>
</center>


</body>
</html>
