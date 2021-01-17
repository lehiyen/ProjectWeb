package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Category;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "category", urlPatterns = "/category")
public class doCategoryControll extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameCategory = request.getParameter("nameCategory");
        ProductEntity pe = new ProductEntity();
        List<Product> lstProductByCatetegory = pe.getProductByCategory(nameCategory);

        List<Category> category = pe.getAllCategory();

        request.setAttribute("category", category);
        request.setAttribute("product", lstProductByCatetegory);
        request.setAttribute("title", nameCategory);

        request.getRequestDispatcher("asus.jsp").forward(request, response);
    }
}
