<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/4/9
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="rd" class="cxc.hhkjxy.FileReadAndWrite" scope="page"></jsp:useBean>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_sixth_Test</title>
</head>
<body>
<jsp:setProperty name="rd" property="*"></jsp:setProperty>
<center>
    <br>
    <h3>文本文件读写</h3>
    <form action="" method="post">
        文件路径：<input type="text" name="filePath" size="30"
                    value="<jsp:getProperty name="rd" property="filePath"/>">
        <input type="submit" value="读取">
    </form>
    <form action="" method="post">
        <input type="hidden" name="filePath" size="30"
               value="<jsp:getProperty name="rd" property="filePath"/>">
        <textarea name="fileContent" cols="60" rows="5">
        <jsp:getProperty name="rd" property="fileContent"/>
    </textarea>
        <br> <br>
        <input type="submit" value="修改">
    </form>
</center>
</body>
</html>
