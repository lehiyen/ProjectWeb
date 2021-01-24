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

@WebServlet(name = "search", urlPatterns = "/search")
public class doSearch extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        // to do doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
//        System.out.println(keyword);
        String indexString = request.getParameter("index") ;
//        System.out.println(indexString);
        int index = Integer.parseInt(indexString);
//        int index = 1;
//        System.out.println(index);
        ProductEntity pe = new ProductEntity();
        int proOfPage = 12;
        int proOfSearch =pe.countProductSearch(keyword);
        int endPage = proOfSearch/proOfPage;
        if ( proOfSearch % proOfPage !=0){
            endPage++;
        }
        Collection<Product> value = new ProductEntity().search(keyword, index, proOfPage);
        request.setAttribute("list_KQTK", value);
        Collection<Category> category = new ProductEntity().getAllCategory();
        request.setAttribute("category", category);
        request.setAttribute("endPage", endPage);
        request.setAttribute("keyword", keyword);
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }
}
