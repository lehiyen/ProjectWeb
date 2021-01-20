package vn.edu.nlu.entity;

import vn.edu.nlu.beans.*;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class ProductEntity {
    int count =0;
    public static List<Product> getTypicalProducts(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from sanpham where sanphamtieubieu = ?";
            s = con.prepareStatement(sql);
            s.setString(1, String.valueOf(1));
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
                re.add(new Product(rs.getString("id"),rs.getString("maSP"), null, rs.getString("tenSP"),0, null, null, rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, priceSale, rs.getString("motaSP")
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
    public static List<Product> getNewProducts(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from sanpham where ngaynhap >= ?";
            s = con.prepareStatement(sql);
            s.setString(1, "2020-01-20");
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
                re.add(new Product(rs.getString("id"),rs.getString("maSP"), null, rs.getString("tenSP"),0, null, null, rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, priceSale, rs.getString("motaSP")
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
    public static List<Product> getDiscountProducts(){
        PreparedStatement s = null;
        try {
            Product p =new Product();
            Connection con = ConnectionDB.connect();
            String sql="select * from sanpham where giamgia > ?";
            s = con.prepareStatement(sql);
            s.setInt(1, 0);
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                try {
                    long priceSale = rs.getLong("gia") -
                            rs.getLong("gia")*(rs.getInt("giamgia")/100);

                    re.add(new Product(rs.getString("id"),rs.getString("maSP"),
                            null, rs.getString("tenSP"),0, null,
                            null, rs.getInt("giamgia"), rs.getLong("gia"),
                            0, rs.getString("hinhanh"), 0, 0,
                            priceSale, rs.getString("motaSP")
                    ));
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public static List<Product> getSellingProducts(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from sanpham where sanphambanchay = ?";
            s = con.prepareStatement(sql);
            s.setString(1, String.valueOf(1));
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
                re.add(new Product(null,rs.getString("maSP"), null, rs.getString("tenSP"),0, null, null, rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, priceSale, rs.getString("motaSP")
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
    public static List<Product> getAllProduct(String id , int numberPagesize){
        int  numPage = Integer.parseInt(id) ;
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from sanpham limit ?,?";
            s = con.prepareStatement(sql);
            s.setInt(1 ,numberPagesize*(numPage-1));
            s.setInt(2,numberPagesize);
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
                re.add(new Product(rs.getString("id"),rs.getString("maSP"), null, rs.getString("tenSP"),0, null, null, rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, priceSale, rs.getString("motaSP")
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
    public static List<Category> getAllCategory(){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from category";
            s = con.prepareStatement(sql);
            ResultSet rs = s.executeQuery();
            List<Category> re = new LinkedList<>();
            while(rs.next()){
                re.add(new Category(rs.getInt("id"), rs.getString("name")
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
    public KhachHang checkUserExit(String user){
        PreparedStatement s= null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from khachhang\n"
                    +"where username =?\n";
            s = con.prepareStatement(sql);
            s.setString(1,user);
            ResultSet rs = s.executeQuery();
            while (rs.next()){
                return new KhachHang(rs.getString(2),rs.getString(3));
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public void register(String username, String password, String email){
        int id = count++;
        PreparedStatement s= null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="insert into khachhang\n"
                    +"values (?, ?, ?, null, null, null, null, null, ?, null, null, null)";
            s = con.prepareStatement(sql);
            s.setInt(1, id);
            s.setString(2, username);
            s.setString(3, password);
            s.setString(4,email);
            s.executeUpdate();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static ProductDetail getProductDetail(String maSP){
        PreparedStatement s= null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from cauhinhsp\n" +
                    "where maSP =?";
            s = con.prepareStatement(sql);
            s.setString(1,maSP);
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                return new ProductDetail(rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4), rs.getString(5),
                        rs.getString(6), rs.getString(7), rs.getString(8),
                        rs.getString(9), rs.getString(10), rs.getString(11),
                        rs.getString(12), rs.getString(13), rs.getString(14),
                        rs.getString(15), rs.getString(16), rs.getString(17),
                        rs.getString(18), rs.getString(19), rs.getString(20),
                        rs.getString(21), rs.getString(22), rs.getString(23),
                        rs.getString(24), rs.getString(25), rs.getString(26));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static List<HinhAnhSP> getPictureProduct(String maSP){
        PreparedStatement s = null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from hinhanhsp where maSP =?";
            s = con.prepareStatement(sql);
            s.setString(1, maSP);
            ResultSet rs = s.executeQuery();
            List<HinhAnhSP> re = new LinkedList<>();
            while(rs.next()){
                re.add(new HinhAnhSP(rs.getInt(1), rs.getString(2), rs.getString(3)));
            }
            rs.close();
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }
    public Product getInfoProduct(String maSP){
        PreparedStatement s= null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from sanpham\n" +
                    "where maSP =?";
            s = con.prepareStatement(sql);
            s.setString(1,maSP);
            ResultSet rs = s.executeQuery();
            while (rs.next()) {
                long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
                return new Product(rs.getString("id"),rs.getString("maSP"), rs.getString("thuonghieu"), rs.getString("tenSP"),0, null, rs.getString("trangthai"), rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, priceSale, rs.getString("motaSP")
                );
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public static List<Product> getProductByCategory(String nameCategory, String id , int numberPagesize){
        PreparedStatement s = null;
        int  numPage = Integer.parseInt(id) ;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from sanpham\n"
                    +"where thuonghieu =?\n" +"limit ?,?";
            s = con.prepareStatement(sql);
            s.setString(1,nameCategory);
            s.setInt(2 ,numberPagesize*(numPage-1));
            s.setInt(3, numberPagesize);
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
                re.add(new Product(rs.getString("id"),rs.getString("maSP"), null, rs.getString("tenSP"),0, null, null, rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, priceSale, rs.getString("motaSP")
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
public List<Product> getSimilarProduct(String thuonghieu){
    PreparedStatement s = null;
    try {
        Connection con = ConnectionDB.connect();
        String sql="select * from sanpham\n" +
                "where thuonghieu = ?\n" +
                "limit 4;";
        s = con.prepareStatement(sql);
        s.setString(1,thuonghieu);
        ResultSet rs = s.executeQuery();
        List<Product> re = new LinkedList<>();
        while(rs.next()){
            long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
            re.add(new Product(rs.getString("id"),rs.getString("maSP"), null, rs.getString("tenSP"),0, null, null, rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, priceSale, rs.getString("motaSP")
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
    public void updateInfoKhachHang(String username, String name, String surname, int sdt, String address){
        PreparedStatement s= null;
        try {
            Connection con = ConnectionDB.connect();
            String sql="UPDATE khachhang\n" +
                    "SET tenKH = ?, hoKH= ?, diachi =?, sdt = ?\n" +
                    "WHERE username=?;";
            s = con.prepareStatement(sql);
            s.setString(1,name);
            s.setString(2,surname);
            s.setString(3,address);
            s.setInt(4,sdt);
            s.setString(5,username);
            s.executeUpdate();


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    //phuong thuc tim kiem
    public static List<Product> search(String keyword, String id , int numberPagesize){
        PreparedStatement s = null;
        int  numPage = Integer.parseInt(id) ;
        try {
            Connection con = ConnectionDB.connect();
            String sql="select * from sanpham where tenSP like ? limit ?,?";
            s = con.prepareStatement(sql);
            s.setString(1, "%"+keyword+"%");
            s.setInt(2 ,numberPagesize*(numPage-1));
            s.setInt(3,numberPagesize);
            ResultSet rs = s.executeQuery();
            List<Product> re = new LinkedList<>();
            while(rs.next()){
                long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
                re.add(new Product(rs.getString("id"),rs.getString("maSP"), null, rs.getString("tenSP"),0, null, null, rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, priceSale, rs.getString("motaSP")
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



    public static void main(String[] args) {
        ProductEntity pe = new ProductEntity();
//        pe.updateInfoKhachHang("yen", "Yen", "Le", 980938786, "Binh Dinh");
//List<Product> re = pe.getDiscountProducts();





    }
    public  static Product getByID(String id) throws SQLException, ClassNotFoundException {
        String sql = "select * from sanpham where id =?" ;
        PreparedStatement ps = ConnectionDB.connect().prepareStatement(sql) ;
        ps.setString(1 , id);
        ResultSet rs = ps.executeQuery() ;
        Product p = null;
        while(rs.next()){
            long priceSale = rs.getLong("gia") - rs.getLong("gia")*rs.getInt("giamgia")/100;
            p = new Product(rs.getString("id"),rs.getString("maSP"), null, rs.getString("tenSP"),0, null, null, rs.getInt("giamgia"), rs.getLong("gia"),0, rs.getString("hinhanh"), 0, 0, 0, null
            );


        }


        return p ;

    }
//    public static  ArrayList<Product> getLimtProduct(String id , int numberPagesize) throws SQLException, ClassNotFoundException {
//
//
//
//
//        int  numPage = Integer.parseInt(id) ;
//        System.out.println(numPage);
//        String sql = "select * from sanpham  limit ?,?" ;
//        PreparedStatement ps = ConnectionDataBase.connect().prepareStatement(sql) ;
//
//        ps.setInt(1 ,numberPagesize*(numPage-1));
//        ps.setInt(2,numberPagesize);
//        ResultSet rs =  ps.executeQuery() ;
//        ArrayList<Product> list = new ArrayList<>() ;
//
//        while(rs.next()){
//            Product  p = new Product() ;
//            p.setId(rs.getString("id"));
//            p.setImg(rs.getString("hinhanh"));
//            p.setName(rs.getString("tenSP"));
//            p.setPrice(rs.getInt("gia"));
//            System.out.println(rs.getString("id"));
//            list.add(p) ;
//        }
//        return list ;
//    }

}
