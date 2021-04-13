<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/26
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="circle" class="cxc.hhkjxy.Circle" scope="page"></jsp:useBean>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Fourth_Test</title>
</head>
<body>
<center>
    <h3>圆的周长面积计算</h3>
    <br><br>
        <form action="" method="post">
            圆的半径：<input type="text" name="radius" >
            <input type="submit" value="计算">
        </form>
    <%
        String radius = request.getParameter("radius");
        try {
            double v = Double.parseDouble(radius);
            circle.setRadius(v);
            out.print("圆的半径是" + v);
            out.print("<br>圆的周长是" + circle.getLength());
            out.print("<br>圆的面积是" + circle.getArea());
        } catch (NullPointerException E) {
        } catch (NumberFormatException e) {
            out.print("输入有误，请检查！");
        }
    %>
</center>
</body>
</html>
