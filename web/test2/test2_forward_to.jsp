<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Second_Test</title>
</head>
<body>
<h4 style="color: #00ff53">动作指令的使用</h4>
nihao
<a href="test2_forward.jsp">转发页面</a>
<%
    String i= request.getParameter("random");
    out.print("因为随机数小于5，所以转发回来。随机数的值为："+i);

%>
<h4 style="color: #00ff53">动作指令include的使用</h4>
<jsp:include page="../index.jsp"></jsp:include>
</body>
</html>
