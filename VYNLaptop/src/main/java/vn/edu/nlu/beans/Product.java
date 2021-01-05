package vn.edu.nlu.beans;

import java.io.Serializable;
import java.sql.Date;

public class Product implements Serializable {
    private int id;
    private String maSP;
    private String thuonghieu;
    private String tenSP;
    private int soluong;
    private Date ngaynhap;
    private String trangthai;
    private int giamgia;
    private long gia;
    private int yeuthich;
    private String hinhanh;
    private int sanphamtieubieu;
    private int sanphambanchay;
    private long giasaugiam;

    public Product(){};
    public Product(String tenSP, long gia, String hinhanh){
        this.tenSP = tenSP;
        this.gia = gia;
        this.hinhanh = hinhanh;
    }
    public Product(String tenSP, long gia, String hinhanh, int giamgia){
        this.tenSP = tenSP;
        this.gia = gia;
        this.hinhanh = hinhanh;
        this.giamgia = giamgia;
    }
    public Product(String tenSP, long gia, String hinhanh, int giamgia, long giasaugiam){
        this.tenSP = tenSP;
        this.gia = gia;
        this.hinhanh = hinhanh;
        this.giamgia = giamgia;
        this.giasaugiam = giasaugiam;
    }

    public Date getNgaynhap() {
        return ngaynhap;
    }

    public int getGiamgia() {
        return giamgia;
    }

    public int getId() {
        return id;
    }

    public int getSanphambanchay() {
        return sanphambanchay;
    }

    public int getSanphamtieubieu() {
        return sanphamtieubieu;
    }

    public int getSoluong() {
        return soluong;
    }

    public int getYeuthich() {
        return yeuthich;
    }

    public long getGia() {
        return gia;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public String getMaSP() {
        return maSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public String getThuonghieu() {
        return thuonghieu;
    }

    public String getTrangthai() {
        return trangthai;
    }
    public long getGiasaugiam(){
        return this. giasaugiam ;
    }
}
