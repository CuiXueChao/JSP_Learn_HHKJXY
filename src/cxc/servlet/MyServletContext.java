package cxc.servlet;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

/**
 * ServletContext使用
 *
 * @PROJECT_NAME: JSP_Learn_HHKJXY
 * @ClassName: MyServletContext
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/21
 */
@WebServlet(urlPatterns = "/MyServletContext")
public class MyServletContext extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //处理乱码
        resp.setContentType("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        ServletContext servletContext = this.getServletContext();
        //获取全局配置参数
        String initParameter = servletContext.getInitParameter("myContext-param");
        //存放参数
        servletContext.setAttribute("setAttribute", "servletContextSetAttribute");
        //取参数setAttribute
        String getAttribute = servletContext.getAttribute("setAttribute").toString();
        resp.getWriter().write("<center>" + initParameter + "<br>");
        resp.getWriter().write(getAttribute + "</center>");
        //查看资源的真实路径
        String realPath = servletContext.getRealPath("WEB-INF/classes/cxc/testFile.txt");
        File file = new File(realPath);
        System.out.println(file.exists());
        RequestDispatcher requestDispatcher = servletContext.getRequestDispatcher("/First");
        //测试转发
        requestDispatcher.forward(req, resp);
    }
}
