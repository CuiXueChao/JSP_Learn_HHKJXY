<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/16
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Third_Test</title>
</head>
<body>
<%
    String name=request.getParameter("userName");
    if (name == null||name.trim().equals("")) {
        response.sendRedirect("test3_sendRedirect.jsp");
    }else{
        byte[] bytes = name.getBytes("iso8859-1");
        String s = new String(bytes, "utf-8");
        out.print("欢迎您："+s+"!");
}
%>
</body>
</html>
