package cn.oneseek.javaweb;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public void add(User user)throws Exception{
        Connection conn = null;
        PreparedStatement ps = null;
        try{
            conn = JdbcUtil.getConnection();
            String sql="insert into user values(?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getUserId());
            ps.setString(2,user.getUserName());
            ps.setString(3,user.getUserSex());
            ps.executeUpdate();
        }finally {
            JdbcUtil.free(null,ps,conn);
        }
    }

    public void update(User user)throws Exception{
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = JdbcUtil.getConnection();
            String sql="update user set userName=?,userSex=? where userId=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getUserName());
            ps.setString(2,user.getUserSex());
            ps.setString(3,user.getUserId());
            ps.executeUpdate();
        }finally {
            JdbcUtil.free(null,ps,conn);
        }
    }

    public void delete(String userId)throws Exception{
        Connection conn = null;
        PreparedStatement ps = null;
        try{
            conn = JdbcUtil.getConnection();
            String sql = "delete from user where userId=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,userId);
            ps.executeUpdate();
        }finally {
            JdbcUtil.free(null,ps,conn);
        }
    }

    public User findUserById(String userId)throws Exception{
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User user = null;
        try{
            conn = JdbcUtil.getConnection();
            String sql = "select * from user where userId=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,userId);
            rs = ps.executeQuery();
            if(rs.next()){
                user = new User();
                user.setUserId(rs.getString(1));
                user.setUserName(rs.getString(2));
                user.setUserSex(rs.getString(3));
            }
        }finally {
            JdbcUtil.free(rs,ps,conn);
        }

        return user;
    }
    public List<User>QueryAll()throws Exception{
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<User>userList = new ArrayList<User>();
        try{
            conn = JdbcUtil.getConnection();
            String sql = "select * from user";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                User user = new User();
                user.setUserId(rs.getString(1));
                user.setUserName(rs.getString(2));
                user.setUserSex(rs.getString(3));
                userList.add(user);
            }
        }finally{
            JdbcUtil.free(rs,ps,conn);
        }
        return userList;
    }

}
