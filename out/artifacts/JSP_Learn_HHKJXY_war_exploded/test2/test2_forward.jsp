<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Second_Test</title>
</head>
<body>
<h4 style="color: #00ff53">动作指令的使用</h4>
<%
    Random random = new Random();
    int i = random.nextInt(10) + 1;
    if (i>5){
        out.print("随机数大于5时不转发，当前随机数为"+i);
    }else{
%>
<jsp:forward page="test2_forward_to.jsp">
   <jsp:param name="random" value="<%=i%>"/>
</jsp:forward>
<%
    }
%>
<a href="test2_forward.jsp">刷新</a>
</body>
</html>
