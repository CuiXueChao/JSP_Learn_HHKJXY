package cxc.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * ServletConfig使用
 *
 * @PROJECT_NAME: JSP_Learn_HHKJXY
 * @ClassName: MyServletConfig
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/21
 */
@WebServlet(urlPatterns = "/MyServletConfig",
        initParams = {
                @WebInitParam(name = "paramOne", value = "paramOne---第一个参数"),
                @WebInitParam(name = "paramTwo", value = "paramTwo---第二个参数")
        }
)
public class MyServletConfig extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //乱码解决
        resp.setContentType("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        //通过继承的方法获取配置对象
        ServletConfig servletConfig = this.getServletConfig();
        //获取配置的参数
        String initParameterOne = servletConfig.getInitParameter("paramOne");
        String initParameterTwo = servletConfig.getInitParameter("paramTwo");
        //输出
        resp.getWriter().write("<center>" + initParameterOne + "<br>");
        resp.getWriter().write(initParameterTwo + "</center>");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
