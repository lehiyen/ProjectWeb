package vn.edu.nlu.controller;

import vn.edu.nlu.beans.KhachHang;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "register", urlPatterns = "/register")
public class doRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name =request.getParameter("name");
        String pass1 = request.getParameter("pass1");
        String pass2 = request.getParameter("pass2");
        String email = request.getParameter("email");
        if (!pass1.equals(pass2)){
            request.setAttribute("err", "Vui lòng nhập lại password!");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }else {
            ProductEntity pe = new ProductEntity();
            KhachHang k = pe.checkUserExit(name);
            if (k == null) {
                pe.register(name,pass1,email);

                response.sendRedirect("home");
            } else {
                request.getRequestDispatcher("register.jsp").forward(request,response);
            }
        }

    }
}
