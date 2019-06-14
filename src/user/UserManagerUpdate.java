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

@WebServlet(name = "UserManagerUpdate",urlPatterns={"/UserManagerUpdate"})
public class UserManagerUpdate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String userId = request.getParameter("user_id");

        String userAge = request.getParameter("user_age");
        String userName = request.getParameter("user_name");
        String userSex = request.getParameter("user_sex");

        User user = new User(userId,userName,userSex,userAge);
        UserDao userDao = new UserDao();
        String outMassage;
        try {
            userDao.update(user);
            outMassage = "修改成功";

            request.setAttribute("user_name",user.getUserName());
            request.setAttribute("user_age",user.getUserAge());
            request.setAttribute("user_id",user.getUserId());
            request.setAttribute("user_sex",user.getUserSex());
            request.setAttribute("outMassage",outMassage);

            request.getRequestDispatcher("usersManager/show.jsp").forward(request,response);

        } catch (Exception e) {
            outMassage = "修改失败";
            request.setAttribute("outputMessage",outMassage);

            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
