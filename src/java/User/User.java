/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;

/**
 *
 * @author chi
 */
public class User {

    private String userId;
    private String username;
    private String fullName;
    private String password;
    private String address;
    private String phone;
    private String roleID;

    public User() {
    }

    public User(String userId, String username, String fullName, String password, String address, String phone, String roleID) {
        this.userId = userId;
        this.username = username;
        this.fullName = fullName;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.roleID = roleID;
    }

    public User(String userId, String username, String fullName, String address, String phone) {
        this.userId = userId;
        this.username = username;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
    }
    

    public User(String username, String fullName, String password, String address, String phone, String roleID) {
        this.username = username;
        this.fullName = fullName;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.roleID = roleID;
    }

    public User(String userId) {
        this.userId = userId;
    }
    
    
    

    public String getUserId() {
        return userId;
    }
    

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRoleId() {
        return roleID;
    }

    public void setRoleId(String roleID) {
        this.roleID = roleID;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", username=" + username + ", fullName=" + fullName + ", password=" + password + ", address=" + address + ", phone=" + phone + ", roleID=" + roleID + '}';
    }

   
    
}
