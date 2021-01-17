package vn.edu.nlu.beans;

import java.io.Serializable;
import java.sql.Date;

public class Product implements Serializable {
    private String id;
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
    private String motaSP;

    public Product(){};
    public Product(String id, String maSP, String thuonghieu, String tenSP, int soluong,
                   Date ngaynhap, String trangthai, int giamgia, long gia, int yeuthich,
                   String hinhanh, int sanphamtieubieu, int sanphambanchay, long giasaugiam,
                   String motaSP){
        this.id = id;
        this.maSP = maSP;
        this.thuonghieu = thuonghieu;
        this.tenSP = tenSP;
        this.soluong = soluong;
        this.ngaynhap = ngaynhap;
        this.trangthai = trangthai;
        this.giamgia = giamgia;
        this.gia = gia;
        this.yeuthich = yeuthich;
        this.hinhanh = hinhanh;
        this.sanphamtieubieu = sanphamtieubieu;
        this.sanphambanchay = sanphambanchay;
        this.giasaugiam = giasaugiam;
        this.motaSP = motaSP;
    };
//    public Product(String maSP, String tenSP, long gia, String motaSP){
//        this.maSP = maSP;
//        this.tenSP = tenSP;
//        this.gia = gia;
//        this.motaSP = motaSP;
//    }
//    public Product(String tenSP, long gia, String hinhanh){
//        this.tenSP = tenSP;
//        this.gia = gia;
//        this.hinhanh = hinhanh;
//    }
//    public Product(String tenSP, String thuonghieu) {
//        this.tenSP = tenSP;
//        this.thuonghieu = thuonghieu;
//    }
//    public Product(String maSP, String tenSP, long gia, String hinhanh, int giamgia){
//        this.maSP = maSP;
//        this.tenSP = tenSP;
//        this.gia = gia;
//        this.hinhanh = hinhanh;
//        this.giamgia = giamgia;
//    }
//    public Product(String maSP, String tenSP, long gia, String hinhanh, int giamgia, long giasaugiam, String motaSP){
//        this.maSP=maSP;
//        this.tenSP = tenSP;
//        this.gia = gia;
//        this.hinhanh = hinhanh;
//        this.giamgia = giamgia;
//        this.giasaugiam = giasaugiam;
//        this.motaSP =motaSP;
//    }
//    public Product(String maSP, String tenSP, long gia, String hinhanh){
//        this.maSP=maSP;
//        this.tenSP = tenSP;
//        this.gia = gia;
//        this.hinhanh = hinhanh;
//
//    }

    public Date getNgaynhap() {
        return ngaynhap;
    }

    public int getGiamgia() {
        return giamgia;
    }

    public String getId() {
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

    public void setId(String id) {
        this.id = id;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public void setNgaynhap(Date ngaynhap) {
        this.ngaynhap = ngaynhap;
    }

    public void setThuonghieu(String thuonghieu) {
        this.thuonghieu = thuonghieu;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }

    public void setGiamgia(int giamgia) {
        this.giamgia = giamgia;
    }

    public void setGia(long gia) {
        this.gia = gia;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    public void setGiasaugiam(long giasaugiam) {
        this.giasaugiam = giasaugiam;
    }

    public void setSanphambanchay(int sanphambanchay) {
        this.sanphambanchay = sanphambanchay;
    }

    public void setSanphamtieubieu(int sanphamtieubieu) {
        this.sanphamtieubieu = sanphamtieubieu;
    }

    public void setYeuthich(int yeuthich) {
        this.yeuthich = yeuthich;
    }

    public String getMotaSP() {
        return motaSP;
    }

    public void setMotaSP(String motaSP) {
        this.motaSP = motaSP;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id='" + id + '\'' +
                ", maSP='" + maSP + '\'' +
                ", thuonghieu='" + thuonghieu + '\'' +
                ", tenSP='" + tenSP + '\'' +
                ", soluong=" + soluong +
                ", ngaynhap=" + ngaynhap +
                ", trangthai='" + trangthai + '\'' +
                ", giamgia=" + giamgia +
                ", gia=" + gia +
                ", yeuthich=" + yeuthich +
                ", hinhanh='" + hinhanh + '\'' +
                ", sanphamtieubieu=" + sanphamtieubieu +
                ", sanphambanchay=" + sanphambanchay +
                ", giasaugiam=" + giasaugiam +
                ", motaSP='" + motaSP + '\'' +
                '}';
    }
}
