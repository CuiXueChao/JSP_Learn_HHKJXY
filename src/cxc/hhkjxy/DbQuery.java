package cxc.hhkjxy;

import java.sql.*;

/**
 * @ClassName:DBQuery
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/14
 */

public class DbQuery {

    private String dbName = "";
    private String tableName = "";
    private String result = "";

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName.trim();
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName.trim();
    }

    public String getResult() {
        if (dbName == null || tableName == null) {
            return result;
        }
        if ("".equals(dbName) || "".equals(tableName)) {
            return result;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer("");
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/" + dbName + "?useUnicode=true&characterEncoding=utf8";
            Connection connection = DriverManager.getConnection(url, "root", "root");
            DatabaseMetaData metaData = connection.getMetaData();
            //检索指定目录中可用的表列的描述。
            //即查询当前库所建立的连接中，tableName表中的所有列。
            ResultSet columns = metaData.getColumns(null, null, tableName, null);
            int col_num = 0;
            //构建表格
            stringBuffer.append("<table border='1' align='center' width='80%'>");
            stringBuffer.append("<tr>");

            while (columns.next()) {
                col_num++;
                stringBuffer.append("<th>" + columns.getString(4) + "</th>");
            }
            stringBuffer.append("</tr>");
            //创建执行器执行sql
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from " + tableName);
            while (resultSet.next()) {
                stringBuffer.append("<tr align='center'>");
                for (int i = 1; i <= col_num; i++) {
                    stringBuffer.append("<td>" + resultSet.getString(i) + "</td>");
                }
                stringBuffer.append("<tr align='center'>");
            }
            stringBuffer.append("</table>");
            statement.close();
            resultSet.close();
            connection.close();
            result = stringBuffer.toString();
        } catch (Exception e) {
            result = e.getMessage();
        }

        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
