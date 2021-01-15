package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.CategoryBlog;
import vn.edu.nlu.entity.BlogEntity;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "blog", urlPatterns = "/blog")
public class doBlog extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        // to do doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Blog> value1 = new BlogEntity().getAllBlog();
        request.setAttribute("allBlog", value1);

        Collection<CategoryBlog> value2 = new BlogEntity().getCategoryBlog();
        request.setAttribute("categoryBlog", value2);
        request.getRequestDispatcher("blog.jsp").forward(request, response);

    }
}
