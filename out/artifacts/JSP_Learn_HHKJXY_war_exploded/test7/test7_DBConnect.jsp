<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%--
  Created by IntelliJ IDEA.
  User: CXC
  Date: 2021/4/12
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jsp_Learn_HHKJXY_Seventh_Test</title>
</head>
<body>
<center>
    <%
        try {
            //加载驱动
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/cxc?useUnicode=true&characterEncoding=utf8";
            String name = "root";
            String pass = "root";
            //创建连接
            Connection connection = DriverManager.getConnection(url, name, pass);
            //执行器
            Statement statement = connection.createStatement();
            String sql1 = "select * from student";
            String sql2 = "INSERT INTO student(`name`,id_card) VALUE(\"cxc\",2003120102)";
            String sql3 = "UPDATE student SET `name`=\"阿炳耀\" WHERE id=2";
            String sql4 = "DELETE FROM student WHERE id=3";
            //statement.executeUpdate(sql4);
            ResultSet resultSet = statement.executeQuery(sql1);
            while (resultSet.next()) {
                out.print(resultSet.getInt(1) + "&nbsp;");
                out.print(resultSet.getString(2) + "&nbsp;");
                out.print(resultSet.getInt(3) + "<br>");
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</center>
</body>
</html>
