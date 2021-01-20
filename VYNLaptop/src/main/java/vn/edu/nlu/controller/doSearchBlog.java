package vn.edu.nlu.controller;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.Category;
import vn.edu.nlu.beans.CategoryBlog;
import vn.edu.nlu.entity.BlogEntity;
import vn.edu.nlu.entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "doSearchBlog", urlPatterns = "/searchBlog")
public class doSearchBlog extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        // to do doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("key");
        Collection<Blog> value = new BlogEntity().searchBlog(key);
        request.setAttribute("allBlog", value);

        Collection<CategoryBlog> value2 = new BlogEntity().getCategoryBlog();
        request.setAttribute("categoryBlog", value2);
        Collection<Category> category = new ProductEntity().getAllCategory();
        request.setAttribute("category", category);

        request.getRequestDispatcher("blog.jsp").forward(request, response);
    }
}
