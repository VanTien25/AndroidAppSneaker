package com.example.myshop.model;

public class GioHang {
    int proID;
    String proName;
    long price;
    String proImg;
    int proQuan;

    public GioHang() {
    }

    public int getProID() {
        return proID;
    }

    public void setProID(int proID) {
        this.proID = proID;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getProImg() {
        return proImg;
    }

    public void setProImg(String proImg) {
        this.proImg = proImg;
    }

    public int getProQuan() {
        return proQuan;
    }

    public void setProQuan(int proQuan) {
        this.proQuan = proQuan;
    }
}
