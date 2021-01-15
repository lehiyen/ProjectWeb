package vn.edu.nlu.beans;

import java.io.Serializable;

public class CategoryBlog implements Serializable {
    private int id;
    private String chude;

    public CategoryBlog(int id, String chude) {
        this.id = id;
        this.chude = chude;
    }

    public int getId() {
        return id;
    }

    public String getChude() {
        return chude;
    }
}
