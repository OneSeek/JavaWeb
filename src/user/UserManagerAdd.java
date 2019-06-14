package user;

import cn.oneseek.javaweb.User;
import cn.oneseek.javaweb.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserManagerAdd",urlPatterns={"/UserManagerAdd"})
public class UserManagerAdd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String userId = request.getParameter("user_id");
        String userName = request.getParameter("user_name");
        String userSex = request.getParameter("user_sex");
        String userAge = request.getParameter("user_age");

        User user = new User(userId,userName,userSex,userAge);
        UserDao userDao = new UserDao();

        String outMassage;
        try {
            userDao.add(user);
            outMassage = "添加成功";
        } catch (Exception e) {
            outMassage = "添加失败";
            e.printStackTrace();
        }
        request.setAttribute("outputMessage",outMassage);
        request.getRequestDispatcher("homework/ServletLearn/info.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
