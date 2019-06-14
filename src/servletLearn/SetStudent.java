package servletLearn;

import cn.oneseek.javaweb.ch08_9.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SetStudent", urlPatterns = {"/SetStudent"})
public class SetStudent extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> studentList = new ArrayList<Student>();
        studentList.add(new Student("001","张三","男"));
        studentList.add(new Student("002","李四","女"));
        studentList.add(new Student("003","王五","男"));
        request.setAttribute("result",studentList);

        request.getRequestDispatcher("show.jsp").forward(request,response);

    }
}
