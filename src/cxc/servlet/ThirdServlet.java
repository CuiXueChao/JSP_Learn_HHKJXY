package cxc.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 第三种servlet的实现方式
 * 重写doGet和doPost两个方法并测试两个方法的调用
 *
 * @ClassName:ThirdServlet
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/19
 */
@WebServlet(name = "Third", urlPatterns = "/Third")
public class ThirdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        System.out.println("doGet方法执行");
        resp.sendRedirect(req.getContextPath() + "/test8/test_postServlet.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //处理乱码
        resp.setContentType("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        System.out.println("doPost方法执行");
        resp.sendRedirect(req.getContextPath() + "/test8/test_postServlet.jsp");
    }
}
