package vn.edu.nlu.entity;

import vn.edu.nlu.beans.KhachHang;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountEntity {
    //phuong thuc kiem tra xem tai khoan co ton tai trong sql khong (login)
    public KhachHang checkLogin(String username, String password) {
        try {
            Connection con = ConnectionDB.connect();
            String sql = "select * from khachhang where username = ? \n and password = ?";
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, username);
            pre.setString(2, password);
            ResultSet rs = pre.executeQuery();
            while (rs.next()){
                return new KhachHang(rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("maKH"),
                        rs.getString("anh"),
                        rs.getString("tenKH"),
                        rs.getString("hoKH"),
                        rs.getString("diachi"),
                        rs.getString("email"),
                        rs.getInt("sdt"), rs.getInt("admin"),
                        rs.getString("maQMK"));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }
    //doi mat khau nguoi dung
    public static boolean changePassword(String oldPass, String newPass1, String newPass2) {
        boolean result = false;
        try {
            boolean check = false;
            Connection con = ConnectionDB.connect();
            String sql = "select * from khachhang where password like ?";
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, oldPass);
            ResultSet rs = pre.executeQuery();
            while (rs.next()){
                check = true;
            }
            if(check){
                if(newPass1.equals(newPass2)) {
                    String sql1 = "update khachhang set password = ? where password like ?";
                    PreparedStatement pre1 = con.prepareStatement(sql1);
                    pre1.setString(1, newPass2);
                    pre1.setString(2, oldPass);
                    int rs1 = pre1.executeUpdate();
                    result = true;
                }
            }else{
            result = false;}
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static void main(String[] args) {
        AccountEntity ae = new AccountEntity();

        System.out.println(changePassword("111", "222", "222"));
    }
}
