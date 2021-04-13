<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/3/17
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Third_Test</title>
</head>
<body>
<%
    /*获取随机数*/

    Integer randomNum = (Integer) session.getAttribute("randomNum");
    int randomNum1 = randomNum.intValue();
    String yourNum = request.getParameter("yourNum");
    int i = Integer.parseInt(yourNum);
    if (i == randomNum1) {
        Integer count = (Integer)session.getAttribute("count");
        out.print("恭喜你"+ count +"次就猜对了"+"答案就是"+randomNum);
    }else if (i<randomNum1){
        //猜小了
        session.setAttribute("left",i);
        session.setAttribute("right",session.getAttribute("right"));
        response.sendRedirect("test3_small.jsp");
    }else if(i>randomNum1){
        //猜大了
        session.setAttribute("left",session.getAttribute("left"));
        session.setAttribute("right",i);
        response.sendRedirect("test3_big.jsp");
    }
%>
</body>
</html>
