package vn.edu.nlu.entity;

import vn.edu.nlu.db.ConnectionDB;
import vn.edu.nlu.beans.CheckDateMonthYear;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserEntity implements Serializable {

    public  void updateTimeSend(String dateMonthYear , String email){

        String sql = "update khachhang set daymonth=? where email=?";
        try {
            PreparedStatement ps = ConnectionDB.connect().prepareStatement(sql) ;
            ps.setString(1 , dateMonthYear);
            ps.setString(2,email);
            ps.executeUpdate() ;
            System.out.println("Done Up Time");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public void changePass(String pass , String email ){
        String sql = "update khachhang set pass= ? where email=?" ;
        try {
            PreparedStatement ps = new ConnectionDB().connect().prepareStatement(sql) ;
            ps.setString(1, pass);
            ps.setString(2 , email);
            System.out.println(" done change pass");
            ps.executeUpdate() ;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
    public  boolean checkEmailExits(String email){
        String sql = "select * from khachhang where email = ?" ;

        try {
            PreparedStatement ps = new ConnectionDB().connect().prepareStatement(sql) ;
            ps.setString(1 , email);
            ResultSet rs =  ps.executeQuery() ;
            rs.last() ;

            if(rs.getRow() > 0){

                return true ;

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false ;
    }
    public String takeTimeByEmail(String mail){
        String time = "";
        String sql =  "select daymonth from khachhang where email=?" ;
        try{
        PreparedStatement ps = ConnectionDB.connect().prepareStatement(sql) ;
        ps.setString(1,mail);
        ResultSet rs =  ps.executeQuery() ;
        while(rs.next()) return rs.getString("daymonth") ;
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

        return "" ;
    }



        public static void main(String[] args) {
        UserEntity user = new UserEntity();
        //CheckDateMonthYear  check = new CheckDateMonthYear() ;
        //String  time = check.takeDateNow() ;
        //user.updateTimeSend(time , "nhat@gmail.com");
            System.out.println( user.checkEmailExits("lehaiyen05082000@gmail.com"));
    }

}
