<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/20
  Time: 11:34
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
    long creationTime = session.getCreationTime();
    Date date = new Date(creationTime);
    out.print("<br>创建时间"+date+"<br>");
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM:HH-mm-ss");
    String format = simpleDateFormat.format(date);
    out.print("<br>创建时间"+format+"<br>");
    long lastAccessedTime = session.getLastAccessedTime();
    out.print("lastAccessedTime"+new Date(lastAccessedTime)+"<br>");
    out.print("is new？"+session.isNew()+"<br>");
    session.setMaxInactiveInterval(60);
    out.print("MaxInactiveInterval —— "+session.getMaxInactiveInterval());
    //session,注销
    //session.invalidate();
%>
</center>

</body>
</html>
