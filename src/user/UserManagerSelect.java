package user;

import cn.oneseek.javaweb.User;
import cn.oneseek.javaweb.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserManagerSelect")
public class UserManagerSelect extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String outMassage;

        String userId = request.getParameter("user_id");

        User user;

        UserDao userDao = new UserDao();


        try {
            user = userDao.findUserById(userId);
            outMassage = "查询成功";
            request.setAttribute("outMassage",outMassage);
            request.setAttribute("user_name",user.getUserName());
            request.setAttribute("user_age",user.getUserAge());
            request.setAttribute("user_id",user.getUserId());
            request.setAttribute("user_sex",user.getUserSex());
            request.setAttribute("user",user);
            request.getRequestDispatcher("usersManager/show.jsp").forward(request,response);

        } catch (Exception e) {
            PrintWriter out = response.getWriter();

            out.print("查询失败");

            e.printStackTrace();

        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
