package servletLearn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Register",urlPatterns = {"/Register"})
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name =request.getParameter("name");
        String sex = request.getParameter("sex");
        String birthday =request.getParameter("birthday");
        String nation = request.getParameter("nation");
        String info = request.getParameter("info");

        String massage = name + " " + sex + " " + birthday + " " + nation + " " + info ;
        request.setAttribute("outputMessage",massage);
        request.getRequestDispatcher("homework/ServletLearn/info.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
