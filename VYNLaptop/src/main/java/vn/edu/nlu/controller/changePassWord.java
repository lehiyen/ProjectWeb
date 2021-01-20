package vn.edu.nlu.controller;

import vn.edu.nlu.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "changePassWord", urlPatterns = "/changePassWord")
public class changePassWord extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        // to do doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String oldpass = request.getParameter("oldpass");
        String newpass1 = request.getParameter("newpass1");
        String newpass2 = request.getParameter("newpass2");

        AccountEntity ae = new AccountEntity();
        boolean result = ae.changePassword(oldpass, newpass1, newpass2);
        if(result == false){
            request.setAttribute("mess", "lỗi, vui lòng kiểm tra lại thông tin nhập vào");
            request.getRequestDispatcher("changePassWord.jsp").forward(request, response);

        }else{
            request.setAttribute("mess", "đổi mật khẩu thành công!");
            request.getRequestDispatcher("changePassWord.jsp").forward(request, response);

        }

    }
}
