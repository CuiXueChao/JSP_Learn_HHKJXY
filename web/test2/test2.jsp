
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Second_Test</title>
</head>
<body>
<h4 style="color: red">指令元素include 引入实验1 — index.jsp</h4>
<%@include file="../index.jsp"%>
<hr>
<h4 style="color: #0006ff">指令元素page 引入java.util.Random 实现1-10随机数</h4>
<%@page import="java.util.Random" %>
<%
    Random random = new Random();
    int i = random.nextInt(10) + 1;
    out.print("随机数 ："+i);
%>
<hr>
<h4 style="color: #00ff53">内置对象request的使用</h4>
<form action="test2_sub.jsp" method="post" >
    请输入你的名字：<input type="text" size="20" name="userName"/>
    <input type="submit" value="提交" />
</form>
</body>
</html>