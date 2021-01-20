package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Category;
import vn.edu.nlu.entity.ProductEntity;
import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.beans.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;

@WebServlet(name = "shopCart", urlPatterns = "/shopCart")
public class shopCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String id = request.getParameter("id") ;
       String action = request.getParameter("action") ;
        HttpSession session = request.getSession() ;
        System.out.println(request.getParameter("quantity"));
       Cart cart = (Cart) session.getAttribute("cart") ;
       if(cart==null) {
           cart = new Cart();

       }
        try {
            cart.addItem(ProductEntity.getByID(id));
            if(request.getParameter("quantity")!=null) {
            int  num  = Integer.parseInt(request.getParameter("quantity"))-1;
            cart.update(num , id);
            }
            session.setAttribute("cart" , cart);
            String data = cart.getTotalQuantityProduct()+" "+ cart.totalMoneyCart() ;
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(data);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
           if(action!=null && action.equals("add")){
               Collection<Category> category = new ProductEntity().getAllCategory();
               request.setAttribute("category", category);
               response.sendRedirect("pageCart");
           }
//        System.out.println("da them");
    }
}
