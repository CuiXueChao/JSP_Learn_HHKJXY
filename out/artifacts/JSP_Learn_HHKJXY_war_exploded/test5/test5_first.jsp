<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/30
  Time: 21:50
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
    <h3>first.jsp</h3>
    <form action="" method="post">
        半径：<input type="text" name="radius">
        <input type="submit" value="修改">
    </form>
    <%
        String radius = request.getParameter("radius");
        if (radius != null) {
            double value = Double.parseDouble(radius);
            circle.setRadius(value);
        }
        out.print("半径是:"+circle.getRadius());
    %>
    <br><br>
    <a href="test5_second.jsp">跳转到second.jsp</a>
</center>
</body>
</html>
