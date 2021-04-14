<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/4/14
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="dbQuery" class="cxc.hhkjxy.DbQuery" scope="page">
    <%--  dbQuery  --%>
</jsp:useBean>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Seventh_Test</title>
</head>
<body>
<jsp:setProperty name="dbQuery" property="*"></jsp:setProperty>
<center>
    <br><br>
    <h3>数据查询</h3>
    <form action="" method="post">
        数据库：<input type="text" name="dbName" value="<jsp:getProperty name="dbQuery" property="dbName"/>">
        数据表：<input type="text" name="tableName" value="<jsp:getProperty name="dbQuery" property="tableName"/>">
        <input type="submit" value="查询">
    </form>
    <br>
    <jsp:getProperty name="dbQuery" property="result"/>
</center>
</body>
</html>
