package vn.edu.nlu.controller;

import vn.edu.nlu.entity.UserEntity;
import vn.edu.nlu.mail.SendMail;
import vn.edu.nlu.beans.CheckDateMonthYear;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TakePassWord", urlPatterns = "/TakePassWord")
public class TakePassWord extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  desMail = request.getParameter("mail");
        System.out.println(desMail);
        UserEntity userEntity = new UserEntity() ;
        String notify = null;
        if(userEntity.checkEmailExits(desMail)) {
            CheckDateMonthYear checkDateMonthYear = new CheckDateMonthYear() ;
            SendMail mail = new SendMail(desMail);
            mail.send();
            userEntity.updateTimeSend(checkDateMonthYear.takeDateNow() ,desMail);


        notify = "Vui Lòng Kiểm Tra Email" ;
        }
        else  notify = "Email Không Tồn Tại";
        request.setAttribute("notify" , notify);
        request.getRequestDispatcher("enterEmail.jsp").forward(request,response);
    }
}
