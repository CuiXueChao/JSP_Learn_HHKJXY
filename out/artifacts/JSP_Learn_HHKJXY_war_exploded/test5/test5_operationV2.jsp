<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/31
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="operation" class="cxc.hhkjxy.Operation" scope="page"></jsp:useBean>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Fifth_Test</title>
</head>
<body>
<%--根据提交的标签中name属性与javaBean中的属性一一匹配--%>
<jsp:setProperty name="operation" property="*"></jsp:setProperty>
<jsp:setProperty name="operation" property="operator" param="operator"></jsp:setProperty>
<%
    String flag1 = "",flag2 = "",flag3 = "",flag4 = "";
    String operator = operation.getOperator();
    if ("+".equals(operator)) {
        flag1="selected";
    }
    if ("-".equals(operator)) {
        flag2="selected";
    }
    if ("*".equals(operator)) {
        flag3="selected";
    }
    if ("/".equals(operator)) {
        flag4="selected";
    }
%>
<br><br>
<center>
    <h3>四则运算</h3>
    <form action="" method="post">
        <input type="text" name="numOne"
               value="<jsp:getProperty name="operation" property="numOne"/>">
        <select name="operator">
            <option value="+" <%=flag1%>>+</option>
            <option value="-" <%=flag2%>>-</option>
            <option value="*" <%=flag3%>>*</option>
            <option value="/" <%=flag4%>>/</option>
        </select>
        <input type="text" name="numTwo"
               value="<jsp:getProperty name="operation" property="numTwo"/>">
        <input type="submit" value="计算">
        <br><br>
        <strong>结果是：
            <span style="color: red">
                <jsp:getProperty name="operation" property="result"></jsp:getProperty>
            </span>
        </strong>
    </form>
</center>
</body>
</html>
