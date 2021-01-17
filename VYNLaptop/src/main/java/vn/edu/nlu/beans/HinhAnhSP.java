package vn.edu.nlu.beans;

import java.io.Serializable;

public class HinhAnhSP implements Serializable {
    private int id;
    private String masp;
    private String link;
    public HinhAnhSP(){}
    public  HinhAnhSP(int id, String masp, String link){
        this.id = id;
        this.masp= masp;
        this.link = link;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getLink() {
        return link;
    }

    public String getMasp() {
        return masp;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    @Override
    public String toString() {
        return "HinhAnhSP{" +
                "id=" + id +
                ", masp='" + masp + '\'' +
                ", link='" + link + '\'' +
                '}';
    }
}
