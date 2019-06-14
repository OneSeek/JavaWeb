package cn.oneseek.javaweb;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public void add(User user){
        Connection conn = null;
        PreparedStatement ps = null;
        try{
            conn = JdbcUtil.getConnection();
            String sql="insert into user values(?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getUserId());
            ps.setString(2,user.getUserName());
            ps.setString(3,user.getUserSex());
            ps.setString(4,user.getUserAge());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtil.free(null,ps,conn);
        }
    }

    public void update(User user)throws Exception{
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = JdbcUtil.getConnection();
            String sql="update user set userName=?,userSex=?,userAge=? where userId=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getUserName());
            ps.setString(2,user.getUserSex());
            ps.setString(3,user.getUserAge());
            ps.setString(4,user.getUserId());
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
                user.setUserAge(rs.getString(4));
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
                user.setUserAge(rs.getString(4));
                userList.add(user);
            }
        }finally{
            JdbcUtil.free(rs,ps,conn);
        }
        return userList;
    }

    public ArrayList<User> selectByCombin(String sql) throws SQLException
    {
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try {
            ArrayList<User> userList=new ArrayList<User>();
            conn=JdbcUtil.getConnection();
            pst=conn.prepareStatement(sql);
            rs=pst.executeQuery(sql);
            while(rs.next())
            {
                User user=new User();
                user.setUserId(rs.getString("id"));
                user.setUserName(rs.getString("name"));
                user.setUserSex(rs.getString("sex"));
                user.setUserAge(rs.getString("age"));
                userList.add(user);
            }
            return userList;
        } catch (Exception e) {
            // TODO: handle exception
            return null;
        }
        finally
        {
            JdbcUtil.free(rs, pst, conn);
        }
    }


}
