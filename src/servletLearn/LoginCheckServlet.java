package servletLearn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("username");
        String userPwd = request.getParameter("userpwd");
        String info;
        if("abc".equals(userName)&&"123".equals(userPwd)){
            info = "欢迎你"+userName+"!";
        }else {
            info = "用户名或密码不正确！";
        }
        request.setAttribute("outputMessage",info);
        request.getRequestDispatcher("homework/ServletLearn/info.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
