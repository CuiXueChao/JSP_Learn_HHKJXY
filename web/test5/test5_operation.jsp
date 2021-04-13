<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/30
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="operation" class="cxc.hhkjxy.Operation" scope="page"></jsp:useBean>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Fifth_Test</title>
</head>
<body>
<%
    String result = "";
    double vOne = 0.0;
    double vTwo = 0.0;
    String operator1 = "";
    String flag1 = "", flag2 = "", flag3 = "", flag4 = "";
    try {
        /*
        获取的参数名应于表单中的name属性一致
         */
        double numOne = Double.parseDouble(request.getParameter("numOne"));
        double numTwo = Double.parseDouble(request.getParameter("numTwo"));
        String operator = request.getParameter("operator");
        /*
        Double类型的转换（String-》double）
         */
        vOne = numOne;
        vTwo = numTwo;
        /*
        分别设置两个操作数的值,和操作符号
         */
        operation.setNumOne(vOne);
        operation.setNumTwo(vTwo);
        operation.setOperator(operator);
        operator1 = operation.getOperator();
        result = "" + operation.getResult();
    } catch (NullPointerException e) {
    } catch (NumberFormatException e) {
        out.print("输入格式不正确！请重新输入！");
    }
    if ("+".equals(operator1)) {
        flag1 = "selected";
    }
    if ("-".equals(operator1)) {
        flag2 = "selected";
    }
    if ("*".equals(operator1)) {
        flag3 = "selected";
    }
    if ("/".equals(operator1)) {
        flag4 = "selected";
    }
%>
<br><br>
<center>
    <h3>四则运算</h3>
    <form action="" method="post">
        <input type="text" name="numOne" value="<%=operation.getNumOne()%>">
        <select name="operator">
            <option value="+" <%=flag1%>>+</option>
            <option value="-" <%=flag2%>>-</option>
            <option value="*" <%=flag3%>>*</option>
            <option value="/" <%=flag4%>>/</option>
        </select>
        <input type="text" name="numTwo" value="<%=operation.getNumTwo()%>">
        <input type="submit" value="计算">
        <br><br>
        <strong>结果是：<span style="color: red"><%=result%></span></strong>
    </form>
</center>
</body>
</html>
