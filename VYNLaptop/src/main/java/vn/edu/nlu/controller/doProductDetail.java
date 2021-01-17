package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Category;
import vn.edu.nlu.beans.HinhAnhSP;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.beans.ProductDetail;
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

@WebServlet(name = "productDetail", urlPatterns = "/product")
public class doProductDetail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maSP = request.getParameter("maSP");

        ProductEntity pe = new ProductEntity();

        ProductDetail detail = pe.getProductDetail(maSP);
        request.setAttribute("detail",detail);

        List<HinhAnhSP> lstPicture = pe.getPictureProduct(maSP);
        request.setAttribute("picture",lstPicture);

        Product pro = pe.getInfoProduct(maSP);
        request.setAttribute("info",pro);

        List<Category> category = pe.getAllCategory();
        request.setAttribute("category", category);

        List<Product> lstSimilarproduct = pe.getSimilarProduct(pro.getThuonghieu());
        request.setAttribute("similar", lstSimilarproduct);


        request.getRequestDispatcher("chitietsanpham.jsp").forward(request, response);

    }
}
