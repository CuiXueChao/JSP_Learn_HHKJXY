<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/4/4
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="fileCounts" class="cxc.hhkjxy.FileCounts" scope="page"/>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Fifth_Test</title>
</head>
<body>
<center>
    <jsp:setProperty name="fileCounts" property="*"/>
    <br><br>
    <h3>文件个数统计</h3>
    <form action="" method="post">
        目录：<input type="text" name="dir" size="100"
                  value='<jsp:getProperty name="fileCounts" property="dir"/>'/>
        <input type="submit" value="统计">
    </form>
    <br><br>
    该目录共有
    <jsp:getProperty name="fileCounts" property="fileCount"/>
    个文件。
</center>

</body>
</html>
