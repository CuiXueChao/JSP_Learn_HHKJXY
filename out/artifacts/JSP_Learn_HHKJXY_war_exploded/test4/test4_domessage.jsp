<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/23
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Fourth_Test</title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String content = request.getParameter("content");
    if (content == null||userName==null) {
        response.sendRedirect("test4_message.jsp");
    }
    if (userName.trim().equals("") || content.trim().length() == 0) {
        response.sendRedirect("test4_message.jsp");
    }
    Date date = new Date();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM:HH-MM-SS");
    String format = simpleDateFormat.format(date);

    String msg = userName + "##" + content + "##" + format;
    List<String> msgs = null;

    Object obj = application.getAttribute("box");
    if (obj == null) {
        msgs = new ArrayList<>();
        msgs.add(msg);
        application.setAttribute("box",msgs);
    }else{
        msgs= (List<String>) obj;
        msgs.add(msg);
    }
    response.sendRedirect("test4_showMessage.jsp");


%>
<center>


</center>
</body>
</html>
