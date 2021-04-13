<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/16
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Third_Test</title>
</head>
<body>
<br><br>
<center>
    <form action="" method="post">
        姓名：<input type="text">
        <input type="submit" value="改变contentType" name="sub">
    </form>
</center>
<%
    String value=request.getParameter("sub");
if (null!=value){
    response.setContentType("image/jpeg");
}
%>
</body>
</html>
