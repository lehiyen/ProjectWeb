package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.CategoryBlog;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.BlogEntity;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "home", urlPatterns ="/home")
public class doHome extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        // to do doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Product> value1 = new ProductEntity().getTypicalProducts();
        request.setAttribute("list1_1", value1);

        Collection<Product> value2 = new ProductEntity().getNewProducts();
        request.setAttribute("list1_2", value2);

        Collection<Product> value3 = new ProductEntity().getSellingProducts();
        request.setAttribute("list1_3", value3);

        Collection<Product> value4 = new ProductEntity().getDiscountProducts();
        request.setAttribute("list1_4", value4);

        Collection<Blog> value5 = new BlogEntity().getAllBlog();
        request.setAttribute("allBlog", value5);

        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
}
