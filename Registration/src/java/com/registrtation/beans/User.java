
package com.registrtation.beans;

public class User {
    int userId;
    String userType;
    String userName;
    String userPassword;
    
    public User(int userId, String userType, String userName, String userPassword) {
        this.userId = userId;
        this.userType = userType;
        this.userName = userName;
        this.userPassword = userPassword;
    }

    public User(String userType, String userName, String userPassword) {
        this.userType = userType;
        this.userName = userName;
        this.userPassword = userPassword;
    }

    public User() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }
    
    

    
}
