package vn.edu.nlu.db;

import java.sql.*;

public class ConnectionDB {
    static Connection con;

    public static Connection connect() throws SQLException, ClassNotFoundException {
        if(con==null||con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vynlaptop", "root", "");
            return con;
        }else return con;
    }

}
