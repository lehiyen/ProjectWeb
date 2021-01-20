package vn.edu.nlu.controller;


import vn.edu.nlu.beans.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Load", urlPatterns = "/Load")
public class Load extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession() ;
        Cart  cart = (Cart) session.getAttribute("cart") ;
        if(cart==null) {
//            System.out.println("dvdkvmfcvmcvm");
            String data = 0+" "+0 ;
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(data);
        }
        else {
          String data =  cart.getTotalQuantityProduct()+ " " +cart.totalMoneyCart() ;
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(data);
        }
    }
}
