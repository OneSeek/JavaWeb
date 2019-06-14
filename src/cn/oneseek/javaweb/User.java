package cn.oneseek.javaweb;

public class User {
    private String userId,userName,userSex,userAge;
    public User(){}
    public User(String userId,String userName,String userSex,String userAge){
        this.userId = userId;
        this.userName = userName;
        this.userSex = userSex;
        this.userAge = userAge;
    }

    public String getUserId(){
        return userId;
    }
    public void setUserId(String userId){
        this.userId=userId;
    }
    public String getUserName(){
        return userName;
    }
    public void setUserName(String userName){
        this.userName = userName;
    }
    public String getUserSex(){
        return userSex;
    }
    public void setUserSex(String userSex){
        this.userSex=userSex;
    }

    public String getUserAge() {
        return userAge;
    }

    public void setUserAge(String userAge) {
        this.userAge = userAge;
    }
}
