package servletLearn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorld")
public class HelloWorld extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        out.println("<HTML>");
        out.println("   <HEAD><TITLE>第一个Servlet实例</TITLE></HEAD>");
        out.println("   <BODY>");
        out.println("       Hello World!<br>");
        out.println("   <BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();
    }
}
