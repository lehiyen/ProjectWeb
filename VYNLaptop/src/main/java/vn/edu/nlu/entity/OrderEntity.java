package vn.edu.nlu.entity;

import vn.edu.nlu.db.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

public class OrderEntity {
    Random rd = new Random();
    public void order(String maKH, String ho, String ten, String diachi, String tinh, int sdt, String ghichu){
        PreparedStatement s= null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="insert into donhang \n" +
                    "values (?,?, ?, ?,?,?,?,now(),?,?,?);";
            s = con.prepareStatement(sql);
            s.setInt(1,1);
            s.setString(2,maKH+rd.nextInt(100)+1);
            s.setString(3,maKH);
            s.setString(4,ho);
            s.setString(5,ten);
            s.setString(6,diachi);
            s.setString(7,tinh);
            s.setString(8,ghichu);
            s.setInt(9,sdt);
            s.setString(10,"đơn hàng mới");
            s.executeUpdate();


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
}
