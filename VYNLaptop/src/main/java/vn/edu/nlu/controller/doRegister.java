package vn.edu.nlu.controller;

import vn.edu.nlu.db.ConnectionDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "register", urlPatterns = "/register")
public class doRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =request.getParameter("name");
        String pass1 = request.getParameter("pass1");
        String pass2 = request.getParameter("pass2");
        String email = request.getParameter("email");
        if (!pass1.equals(pass2)){
            request.setAttribute("err", "Vui lòng nhập lại password");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
            PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="INSERT INTO khachhang " +
                    "VALUES (null, "+name+", "+pass1+", null, null, null, null, null, "+email+", null,null);";
            s = con.prepareStatement(sql);
            s.setString(1, String.valueOf(1));
            ResultSet rs = s.executeQuery();;
            s = con.prepareStatement(sql);
            s.setString(1, String.valueOf(1));
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        request.getRequestDispatcher("index1.jsp").forward(request, response);
    }
}
