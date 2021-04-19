package cxc.servlet;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;

/**
 * 第二种实现方式，继承GenericServlet类
 * 采用xml配置方式实现
 *
 * @ClassName:SecondServlet
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/19
 */

public class SecondServlet extends GenericServlet {

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException,
            IOException {
        //处理乱码
        servletResponse.setContentType("UTF-8");
        servletResponse.setContentType("text/html;charset=utf-8");

        servletResponse.getWriter().write("servlet的第二中实现方式");
    }
}
