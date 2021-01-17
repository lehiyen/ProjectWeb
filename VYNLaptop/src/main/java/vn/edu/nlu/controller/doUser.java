package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Category;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "user", urlPatterns = "/user")
public class doUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username =request.getParameter("username");
        String name =request.getParameter("name");
        String surname = request.getParameter("surname");
        int sdt = Integer.valueOf(request.getParameter("sdt"));
        String address = request.getParameter("address");
        System.out.println(username);
        System.out.println(name);
        System.out.println(surname);
        System.out.println(sdt);
        System.out.println(address);
        ProductEntity pe = new ProductEntity();


        pe.updateInfoKhachHang(username, name, surname, sdt, address);
        List<Category> category = pe.getAllCategory();

        request.setAttribute("category", category);
        response.sendRedirect("home");
    }
}
