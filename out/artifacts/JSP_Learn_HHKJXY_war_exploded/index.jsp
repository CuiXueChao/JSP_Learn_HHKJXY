
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Jsp_Learn_HHKJXY_Fitst_Test</title>
  </head>
  <body>
    <%--这是一个注释--%>
    <%--程序片的定义--%>
    <%--定义cxc的年龄age=22岁。--%>
  <%
  int age = 22;
  out.print("内置对象out的打印的age——" + age);
  %>
    <%!
      int num=1;
    %>
  <p>崔学超的今年 <span style="color: red"><%=age%></span> 岁了！————表达式打印</p>
  <p>刷新就加一，不信你试试<span style="color: #0eff00 ;font-size: 50px ">  <%=num++%></span></p>
    <br>
    <br>
  </body>
</html>
