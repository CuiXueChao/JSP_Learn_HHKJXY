<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/17
  Time: 17:54
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
    Object left = session.getAttribute("left");
    Object right = session.getAttribute("right");
    Integer count = (Integer)session.getAttribute("count");
    session.setAttribute("count",count+1);
%>
<h3>第<%=count%>次猜,猜小了</h3>
<br>
范围应该在 <span style="color: red"><%=left%></span> 和 <span style="color: red"><%=right%></span> 之间
    <h3>猜数字</h3>
    <form action="test3_result.jsp" method="post">
        <input type="text" name="yourNum" >
        <input type="submit" value="猜一下">
    </form>
</center>
</body>
</html>
