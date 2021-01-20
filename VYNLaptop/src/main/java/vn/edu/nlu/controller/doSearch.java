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
        String id = request.getParameter("id") ;
        if(id==null)  {
            id =  "1" ;
        }

        int pageStart = 0 ;
        int pageEnd = 0 ;
        int totalPage = 0 ;
        List<Product> value = new ArrayList<>() ;
        try {
            Pagination pagination = new Pagination(9, 1, ProductEntity.search(keyword, id, totalPage).size());
            pageStart = pagination.pageStart(id);
            pageEnd = pagination.pageEnd(id);

            totalPage = pagination.totalPage();
            value = new ProductEntity().search(keyword, id, pagination.getDisPlayProduct());

        } finally {

        }
//        Collection<Product> value = new ProductEntity().search(keyword);
        request.setAttribute("list_KQTK", value);
        Collection<Category> category = new ProductEntity().getAllCategory();
        request.setAttribute("category", category);
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }
}
