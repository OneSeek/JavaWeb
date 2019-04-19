package servletLearn;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "FormCheck")
public class FormCheck extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("UTF-8");
        String userid=request.getParameter("userid");
        if(!"张三".equals(userid)){
            out.print("用户名不存在");
        }else{
            String userpwd=request.getParameter("userpwd");
            if(!"".equals("userpwd")){
                if("123".equals(userpwd))
                    out.print("欢迎您");
                else
                    out.print("密码错误");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
