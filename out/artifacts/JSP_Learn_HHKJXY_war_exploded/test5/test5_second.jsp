<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/30
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="circle" scope="application" class="cxc.hhkjxy.Circle"></jsp:useBean>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Fifth_Test</title>
</head>
<body>
<br><br>
<center>
    <h3>test5_Second.jsp</h3>
    <%
        out.print("半径是：" + circle.getRadius());
    %>
    <br><br>
    <a href="test5_first.jsp">跳转到first.jsp</a>
</center>
</body>
</html>
