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

@WebServlet(name = "shop", urlPatterns = "/shop")
public class doShop extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        // to do doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id") ;
        if(id==null)  {
            id =  "1" ;
        }

        int pageStart = 0 ;
        int pageEnd = 0 ;
        int totalPage = 0 ;
        List<Product> list = new ArrayList<>() ;
        try {
            Pagination pagination = new Pagination(9, 1, ProductEntity.getAllProduct(id, totalPage).size());
            pageStart = pagination.pageStart(id);
            pageEnd = pagination.pageEnd(id);

            totalPage = pagination.totalPage();
            list = new ProductEntity().getAllProduct(id, pagination.getDisPlayProduct());

        } finally {

        }
        request.setAttribute("list5_2" , list);
        request.setAttribute("pageStart" , pageStart);
        request.setAttribute("pageEnd" , pageEnd);
        request.setAttribute("pageCurrent" , id);
        request.setAttribute("totalPage" , totalPage);
//        System.out.println(pageEnd);
//        System.out.println(pageStart);

//        Collection<Product> value = new ProductEntity().getAllProduct(id, totalPage);
//        request.setAttribute("list5_2", value);

        Collection<Product> value4 = new ProductEntity().getDiscountProducts();
        request.setAttribute("list5_1", value4);

        Collection<Category> category = new ProductEntity().getAllCategory();
        request.setAttribute("category", category);

        request.getRequestDispatcher("shop-grid.jsp").forward(request, response);
    }
}
