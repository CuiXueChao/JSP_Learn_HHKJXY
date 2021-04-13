<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/17
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Third_Test</title>
</head>
<body>
<center>
    <br>
<%
    Random random = new Random();
    int num = random.nextInt(100) + 1;
    int left =1;
    int right =100;
    int count =1;
    //随机数
    session.setAttribute("randomNum",num);
    session.setAttribute("left",left);
    session.setAttribute("right",right);
    session.setAttribute("count",count);
%>
<h3>猜数字(1-100)</h3>
<form action="test3_result.jsp" method="post">
    <input type="text" name="yourNum" >
    <input type="submit" value="猜一下">
</form>
</center>
</body>
</html>
