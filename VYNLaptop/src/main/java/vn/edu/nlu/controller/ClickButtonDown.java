package vn.edu.nlu.controller;


import vn.edu.nlu.beans.Cart;
import vn.edu.nlu.beans.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ClickButtonDown", urlPatterns = "/ClickButtonDown")
public class ClickButtonDown extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id") ;
        HttpSession session = request.getSession() ;
       Cart  cart = (Cart) session.getAttribute("cart") ;
        cart.downQuantityProduct(id);
        System.out.println("Quantity Product ");
        for(Product  p : cart.getListItem()){
            System.out.println(p.getSoluong());
        }
       session.setAttribute("cart" , cart);
    }
}
