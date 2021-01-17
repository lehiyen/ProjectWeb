package vn.edu.nlu.beans;

import java.io.Serializable;

public class KhachHang implements Serializable {
    private int id;
    private String username;
    private String password;
    private String makh;
    private String anh;
    private String tenkh;
    private String hokh;
    private String diachi;
    private String email;
    private int sdt;
    private int admin;
    private String maqmk;

    public KhachHang(){

    }
    public KhachHang(String username, String password){
            this.username =username;
            this.password =password;
    }
    public KhachHang(String username, String password, String email){
        this.username =username;
        this.password =password;
        this.email = email;

    }
    public KhachHang(int id, String username, String password, String makh, String anh, String tenkh, String hokh, String diachi,
                     String email, int sdt, int admin, String maqmk){
        this.id =id;
        this.username = username;
        this.password = password;
        this.makh =makh;
        this.anh = anh;
        this.tenkh =tenkh;
        this.hokh=hokh;
        this.diachi =diachi;
        this.email =email;
        this.sdt =sdt;
        this.admin =admin;
        this.maqmk =maqmk;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAdmin() {
        return admin;
    }

    public int getSdt() {
        return sdt;
    }

    public String getAnh() {
        return anh;
    }

    public String getDiachi() {
        return diachi;
    }

    public String getEmail() {
        return email;
    }

    public String getHokh() {
        return hokh;
    }

    public String getMakh() {
        return makh;
    }

    public String getMaqmk() {
        return maqmk;
    }

    public String getPassword() {
        return password;
    }

    public String getTenkh() {
        return tenkh;
    }

    public String getUsername() {
        return username;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setHokh(String hokh) {
        this.hokh = hokh;
    }

    public void setMakh(String makh) {
        this.makh = makh;
    }

    public void setMaqmk(String maqmk) {
        this.maqmk = maqmk;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSdt(int sdt) {
        this.sdt = sdt;
    }

    public void setTenkh(String tenkh) {
        this.tenkh = tenkh;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
