package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Category;
import vn.edu.nlu.entity.OrderEntity;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "order", urlPatterns = "/order")
public class doOrder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maKH =request.getParameter("maKH");
        System.out.println(maKH);
        String ho = request.getParameter("ho");
        String ten = request.getParameter("ten");
        String diachi = request.getParameter("diachi");
        String tinh = request.getParameter("tinh");
        int sdt = Integer.parseInt(request.getParameter("sdt"));
        String ghichu = request.getParameter("ghichu");
        OrderEntity od = new OrderEntity();
        od.order(maKH, ho,ten, diachi, tinh, sdt,ghichu);

//        List<Category> category = new ProductEntity().getAllCategory();
//        request.setAttribute("category", category);
        response.sendRedirect("home");

    }
}
