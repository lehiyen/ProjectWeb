package vn.edu.nlu.beans;

import java.io.Serializable;
import java.sql.Date;

public class Blog implements Serializable {
    private int cid;
    private int id;
    private String mablog;
    private String chude;
    private String tenblog;
    private Date ngaydang;
    private String hinhanh;

    public Blog(String chude, String tenblog, Date ngaydang, String hinhanh){
        this.chude = chude;
        this.tenblog = tenblog;
        this.ngaydang = ngaydang;
        this.hinhanh = hinhanh;
    }

    public void setChude(String chude) {
        this.chude = chude;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    public void setNgaydang(Date ngaydang) {
        this.ngaydang = ngaydang;
    }

    public void setTenblog(String tenblog) {
        this.tenblog = tenblog;
    }

    public int getId() {
        return id;
    }

    public String getMablog() {
        return mablog;
    }

    public String getChude() {
        return chude;
    }

    public String getTenblog() {
        return tenblog;
    }

    public Date getNgaydang() {
        return ngaydang;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public int getCid() {
        return cid;
    }
}
