package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "shop", urlPatterns = "/shop")
public class doShop extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        // to do doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Product> value = new ProductEntity().getAllProduct();
        request.setAttribute("list2_2", value);

        Collection<Product> value4 = new ProductEntity().getDiscountProducts();
        request.setAttribute("list2_1", value4);

        request.getRequestDispatcher("shop-grid.jsp").forward(request, response);
    }
}
