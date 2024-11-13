/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;

/**
 *
 * @author admin
 */
public class UserDTO {

    private String username;
    private String fullName;
    private String roleID;
    private String password;
    private String balance;

    public UserDTO() {
        this.username = "";
        this.fullName = "";
        this.roleID = "";
        this.password = "";
    }

    public UserDTO(String userID, String fullName, String roleID, String password) {
        this.username = userID;
        this.fullName = fullName;
        this.roleID = roleID;
        this.password = password;
    }

    public UserDTO(String username, String fullName, String roleID, String password, String balance) {
        this.username = username;
        this.fullName = fullName;
        this.roleID = roleID;
        this.password = password;
        this.balance = balance;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }
    
    

    public String getUserID() {
        return username;
    }

    public void setUserID(String userID) {
        this.username = userID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getRoleID() {
        return roleID;
    }

    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UserDTO{" + "username=" + username + ", fullName=" + fullName + ", roleID=" + roleID + ", password=" + password + '}';
    }

}
