package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Khachhang;
import vn.edu.nlu.entity.AccountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "login", urlPatterns = "/login")
public class doLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        try {
            String uname = request.getParameter("username");
            String pass = request.getParameter("password");

            HttpSession session = request.getSession();
            session.setAttribute("us", uname);
            session.setAttribute("pw", pass);

            AccountEntity ae = new AccountEntity();
            Khachhang u = ae.checkLogin(uname, pass);
            if (u != null) {
                response.sendRedirect("index1.jsp");
            } else {
                request.setAttribute("err", "Sai username hoặc password");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Lỗi kết nối tới CSDL");
            request.setAttribute("err", "Sai Username hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
            System.out.println("Lỗi kết nối tới CSDL");
            request.setAttribute("err", "Sai Username hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }
}
