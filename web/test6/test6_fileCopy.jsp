<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/4/7
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="fileCopy" class="cxc.hhkjxy.FileCopy" scope="page"></jsp:useBean>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_sixth_Test</title>
</head>
<body>
<center>
    <jsp:setProperty name="fileCopy" property="*"></jsp:setProperty>
    <br><br>
    <form action="" method="post">
        要拷贝的文件：<input type="text" name="src" size="50"
                      value="<jsp:getProperty name="fileCopy" property="src"/>">
        <br><br>
        要拷贝的地方：<input type="text" name="goal" size="50"
                      value="<jsp:getProperty name="fileCopy" property="goal"/>">
        <br><br>
        <input type="submit" value="拷贝">
    </form>
    <br>
    <jsp:getProperty name="fileCopy" property="tips"/>
</center>
</body>
</html>
