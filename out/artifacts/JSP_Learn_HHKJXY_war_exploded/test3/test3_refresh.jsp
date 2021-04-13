<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/16
  Time: 13:24
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
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("HH-mm-ss");
    String format = sdf.format(date);
//    out.print(format);
   String start= request.getParameter("start");
    if (start != null) {
        response.setHeader("refresh","1");
    }
   String stop= request.getParameter("stop");
    if (stop != null) {
        response.reset();
        response.setContentType("text/html;charset=UTF-8");
    }
%>
    <br>
当前时间是：<%=format%>s
    <br><br><br>
<form action="">
    <input type="submit" value="start" name="start">
</form>
    <br>
<form action="">
    <input type="submit" value="stop" name="stop">
</form>
</center>
</body>
</html>
