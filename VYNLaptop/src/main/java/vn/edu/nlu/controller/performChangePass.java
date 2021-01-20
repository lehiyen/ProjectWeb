package vn.edu.nlu.controller;

import vn.edu.nlu.entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "performChangePass", urlPatterns = "/performChangePass")
public class performChangePass extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mail = request.getParameter("mail");
        String passNew = request.getParameter("passNew");
        UserEntity userEntity = new UserEntity();
        if (userEntity.checkEmailExits(mail)) {
            userEntity.changePass(passNew, mail);
            response.sendRedirect("shop");
        } else{
        request.setAttribute("notify" , "Email không tồn tại");
        request.getRequestDispatcher("forgotPassword.jsp").forward(request,response);
        }
    }
}
