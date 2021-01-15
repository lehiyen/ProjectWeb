package vn.edu.nlu.entity;

import vn.edu.nlu.beans.Account;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountEntity {
    //phuong thuc kiem tra xem tai khoan co ton tai trong sql khong (login)
    public Account checkLogin(String username, String password) {
        try {
            Connection con = ConnectionDB.connect();
            String sql = "select id, username, password, tenKH from khachhang where username = ? \n and password = ?";
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, username);
            pre.setString(2, password);
            ResultSet rs = pre.executeQuery();
            while (rs.next()){
                return new Account(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("tenKH"));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }
}
