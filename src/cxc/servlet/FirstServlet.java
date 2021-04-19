package cxc.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

/**
 * 第一个servlet
 * 实现Servlet接口
 *
 * @ClassName:FirstServket
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/19
 */
@WebServlet(name = "first", urlPatterns = "/First")
public class FirstServlet implements Servlet {
    public FirstServlet() {
        System.out.println("1.实例化方法执行");
    }

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("2.初始化方法执行");
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException,
            IOException {
        System.out.println("3.service方法执行，可反复执行的方法！");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        System.out.println("4.destroy销毁方法执行");
    }
}
