<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/23
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Fourth_Test</title>
</head>
<body>
<center>
    <br><br>
    <h3>留言板</h3>
    <form action="test4_domessage.jsp" method="post">
        姓名：<input type="text" name="userName" size="27"><br>
        <br><br>
        留言：<textarea name="content" rows="3" cols="30"></textarea>
        <br><br>
        <input type="submit" value="提交留言">
        <br><br>
        <a href="test4_showMessage.jsp">查看留言</a>
    </form>
</center>
</body>
</html>
