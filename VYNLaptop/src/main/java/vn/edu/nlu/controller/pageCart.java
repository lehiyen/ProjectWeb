package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Category;
import vn.edu.nlu.beans.Product;
import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

@WebServlet(name = "pageCart", urlPatterns = "/pageCart")
public class pageCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart") ;
        if(cart==null) {
           cart = new Cart() ;
            request.setAttribute("listItem" , cart.getListItem());
            request.getRequestDispatcher("shopping-cart.jsp" ).forward(request , response);
            int money = 0 ;
            request.setAttribute("money" , money );

        }
        else  {
             int money =cart.totalMoneyCart() ;
             cart.setTotal();
             int totalItem = cart.getTotalQuantityProduct() ;
//            System.out.println(totalItem);
//            System.out.println(money);
             request.setAttribute("bag" , totalItem);
             request.setAttribute("money" , money);
            Collection<Product> listIem = cart.getListItem()  ;
//            for(Product p : listIem){
//                System.out.println(p.getSoluong());
//            }

            request.setAttribute("listItem" ,listIem);
            session.setAttribute("list" , listIem);
            Collection<Category> category = new ProductEntity().getAllCategory();
            request.setAttribute("category", category);
            request.getRequestDispatcher("shopping-cart.jsp").forward(request, response);


        }


    }
}
