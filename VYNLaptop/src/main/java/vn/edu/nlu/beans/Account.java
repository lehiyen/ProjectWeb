package vn.edu.nlu.beans;

import java.io.Serializable;

public class Account implements Serializable {
    private int id;
    private String username;
    private String password;
    private String maKH;
    private String anh;
    private String tenKH;
    private String hoKH;
    private String diachi;
    private String email;
    private long sdt;
    private String maQMK;

    public Account(int id, String username, String password, String tenKH) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.tenKH = tenKH;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getMaKH() {
        return maKH;
    }

    public String getAnh() {
        return anh;
    }

    public String getTenKH() {
        return tenKH;
    }

    public String getHoKH() {
        return hoKH;
    }

    public String getDiachi() {
        return diachi;
    }

    public String getEmail() {
        return email;
    }

    public long getSdt() {
        return sdt;
    }

    public String getMaQMK() {
        return maQMK;
    }
}
