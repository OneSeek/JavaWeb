package user;

import cn.oneseek.javaweb.User;
import cn.oneseek.javaweb.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "UserManagerSelect1",urlPatterns={"/UserManagerSelect"})
public class UserManagerSelect1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql="";
        String user_id = request.getParameter("user_id");
        String user_name = request.getParameter("user_name");
        String user_sex = request.getParameter("user_sex");
        String age1 = request.getParameter("user_age1");
        String age2 = request.getParameter("user_age2");

        if(!user_id.equals(""))
        {
            sql=sql+" and userId="+user_id;
        }
        if(!user_name.equals(""))
        {
            sql=sql+" and userName='"+user_name+"'";
        }
        if(!user_sex.equals(""))
        {
            sql=sql+" and userSex='"+user_sex+"'";
        }
        if((age1!="") && (age2!=""))
        {
            sql=sql+" and userAge between "+age1+" and "+age2;
        }
        sql="select * from user where 1=1"+sql;

        UserDao userDao = new UserDao();
        try {
            ArrayList<User> userArrayList = userDao.selectByCombin(sql);
            request.setAttribute("userArrayList",userArrayList);
            request.getRequestDispatcher("usersManager/show1.jsp").forward(request,response);

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
