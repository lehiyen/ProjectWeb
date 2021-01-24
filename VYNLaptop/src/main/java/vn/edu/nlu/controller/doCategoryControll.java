package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Category;
import vn.edu.nlu.beans.Pagination;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "category", urlPatterns = "/category")
public class doCategoryControll extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameCategory = request.getParameter("nameCategory");
        String indexString = request.getParameter("index") ;
//        System.out.println(indexString);

        int index = Integer.parseInt(indexString) ;
        int proOfPage = 16;
        ProductEntity pe = new ProductEntity();
        int proOfSearch =pe.countProductCategory(nameCategory);
        int endPage = proOfSearch/proOfPage;
        if ( proOfSearch % proOfPage !=0){
            endPage++;
        }

        List<Product> product = pe.getProductByCategory(nameCategory, index, proOfPage);
        request.setAttribute("product",product);
        Collection<Category> category = new ProductEntity().getAllCategory();
        request.setAttribute("category", category);
        request.setAttribute("endPage", endPage);
        request.setAttribute("nameCategory", nameCategory);
        request.getRequestDispatcher("asus.jsp").forward(request, response);
    }
}
