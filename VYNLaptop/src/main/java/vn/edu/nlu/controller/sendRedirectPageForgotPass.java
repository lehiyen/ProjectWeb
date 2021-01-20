package vn.edu.nlu.controller;

import vn.edu.nlu.entity.UserEntity;
import vn.edu.nlu.beans.CheckDateMonthYear;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "sendRedirectPageForgotPass", urlPatterns = "/sendRedirectPageForgotPass")
public class sendRedirectPageForgotPass extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           String mail = request.getParameter("mail");
        UserEntity userEntity = new UserEntity() ;
        CheckDateMonthYear checkDateMonthYear = new CheckDateMonthYear() ;
        String timeNow = checkDateMonthYear.takeDateNow() ;
        String timeTakeDatabase = userEntity.takeTimeByEmail(mail);
       checkDateMonthYear.setDateReceive(timeNow);
       checkDateMonthYear.setDateSend("15/01/2021 22:25:24");
        if(checkDateMonthYear.check())
            request.getRequestDispatcher("forgotPassword.jsp").forward(request, response);

        else response.sendRedirect("Erorr.jsp");
    }
}
