package vn.edu.nlu.entity;

import vn.edu.nlu.beans.Blog;
import vn.edu.nlu.beans.CategoryBlog;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class BlogEntity {
    //phuong thuc lay ra tat ca cac blog
    public static List<Blog> getAllBlog(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select chude, tenblog, ngaydang, hinhanh from blog";
            s = con.prepareStatement(sql);
            ResultSet rs = s.executeQuery();
            List<Blog> re = new LinkedList<>();
            while(rs.next()){
                re.add(new Blog(rs.getString("chude"), rs.getString("tenblog"), rs.getDate("ngaydang"), rs.getString("hinhanh")
                ));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    //lay ra nhung blog theo loai
    public static List<CategoryBlog> getCategoryBlog() {
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql = "select * from phanloaiblog";
            s = con.prepareStatement(sql);
            ResultSet rs = s.executeQuery();
            List<CategoryBlog> re = new LinkedList<>();
            while (rs.next()) {
                re.add(new CategoryBlog(rs.getInt("cid"), rs.getString("chude")
                ));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
        //hien thi ra nhung blog theo loai
        public static List<Blog> getCategoryBlogByCID(String cid) {
            PreparedStatement s = null;
            try {
                Connection con = ConnectionDB.connect();
                String sql = "select * from blog where cid = ?";
                s = con.prepareStatement(sql);
                s.setString(1, cid);
                ResultSet rs = s.executeQuery();
                List<Blog> re = new LinkedList<>();
                while (rs.next()) {
                    re.add(new Blog(rs.getString("chude"), rs.getString("tenblog"), rs.getDate("ngaydang"), rs.getString("hinhanh")
                    ));
                }
                rs.close();
                s.close();
                return re;
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                return new LinkedList<>();
            }
        }
            //viet phuong thuc tim kiem blog
            public static List<Blog> searchBlog(String key) {
                PreparedStatement s = null;
                try {
                    Connection con = ConnectionDB.connect();
                    String sql = "select * from blog where tenblog like ?";
                    s = con.prepareStatement(sql);
                    s.setString(1, "%" + key + "%");
                    ResultSet rs = s.executeQuery();
                    List<Blog> re = new LinkedList<>();
                    while (rs.next()) {
                        re.add(new Blog(rs.getString("chude"), rs.getString("tenblog"), rs.getDate("ngaydang"), rs.getString("hinhanh")
                        ));
                    }
                    rs.close();
                    s.close();
                    return re;
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                    return new LinkedList<>();
                }
            }

}
