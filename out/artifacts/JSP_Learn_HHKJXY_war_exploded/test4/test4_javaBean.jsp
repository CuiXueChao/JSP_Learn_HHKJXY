<%@ page import="cxc.hhkjxy.Circle" %><%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/24
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Fourth_Test</title>
</head>
<body>

<%
    Circle circle = new Circle(5.0);
    double area = circle.getArea();
    double length = circle.getLength();
    out.print("<center><br>面积为"+area+"<br><br>");
    out.print("周长为"+length+"</center>");
%>
</body>
</html>
