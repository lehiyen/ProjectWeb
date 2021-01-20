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
        String id = request.getParameter("id") ;
        if(id==null)  {
            id =  "1" ;
        }

        int pageStart = 0 ;
        int pageEnd = 0 ;
        int totalPage = 0 ;
        List<Product> lstProductByCatetegory = new ArrayList<>() ;
        try {
            Pagination pagination = new Pagination(16, 1, ProductEntity.getProductByCategory(nameCategory, id, totalPage).size());
            pageStart = pagination.pageStart(id);
            pageEnd = pagination.pageEnd(id);

            totalPage = pagination.totalPage();
            lstProductByCatetegory = new ProductEntity().getProductByCategory(nameCategory, id, pagination.getDisPlayProduct());

        } finally {

        }
        ProductEntity pe = new ProductEntity();
//        List<Product> lstProductByCatetegory = pe.getProductByCategory(nameCategory);

        List<Category> category = pe.getAllCategory();

        request.setAttribute("category", category);
        request.setAttribute("product", lstProductByCatetegory);
        request.setAttribute("title", nameCategory);
//        Collection<Category> categoryP = new ProductEntity().getAllCategory();
//        request.setAttribute("category", categoryP);
        request.setAttribute("pageStart" , pageStart);
        request.setAttribute("pageEnd" , pageEnd);
        request.setAttribute("pageCurrent" , id);
        request.setAttribute("totalPage" , totalPage);
        request.getRequestDispatcher("asus.jsp").forward(request, response);
    }
}
