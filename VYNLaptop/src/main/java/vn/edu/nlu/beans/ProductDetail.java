package vn.edu.nlu.beans;

import java.io.Serializable;

public class ProductDetail implements Serializable {
    private String id;
    private String maSP;
    private String baohanh;
    private String mau;
    private String series;
    private String partnumber;
    private String theheCPU;
    private String cpu;
    private String chipdohoa;
    private String ram;
    private String manhinh;
    private String luutru;
    private String socongluutru;
    private String kieukheM2;
    private String congxuathinh;
    private String congketnoi;
    private String ketnoikhongday;
    private String banphim;
    private String hdh;
    private String kichthuoc;
    private String khoiluong;
    private String pin;
    private String mic;
    private String baomat;
    private String denled;
    private String phukien;
    public ProductDetail(){

    }
    public ProductDetail(String id,String maSP,String baohanh,String mau,String series,String partnumber,
                         String theheCPU,String cpu,String chipdohoa,String ram,String manhinh,
                         String luutru,String socongluutru,String kieukheM2,String congxuathinh,
                         String congketnoi,String ketnoikhongday,String banphim,String hdh,
                         String kichthuoc, String khoiluong, String pin,String mic,String baomat,String denled,String phukien){
        this.id = id;
        this.maSP = maSP;
        this.baohanh = baohanh;
        this.mau = mau;
        this.series = series;
        this.partnumber =partnumber;
        this.theheCPU =theheCPU;
        this.cpu = cpu;
        this.chipdohoa = chipdohoa;
        this.ram = ram;
        this.manhinh =manhinh;
        this.luutru= luutru;
        this.socongluutru =socongluutru;
        this.kieukheM2 = kieukheM2;
        this.congxuathinh = congxuathinh;
        this.congketnoi = congketnoi;
        this.ketnoikhongday =ketnoikhongday;
        this.banphim =banphim;
        this.hdh = hdh;
        this.kichthuoc =kichthuoc;
        this.mic =mic;
        this.denled =denled;
        this.phukien =phukien;
        this.khoiluong = khoiluong;
        this.pin = pin;
        this.baomat = baomat;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getBaohanh() {
        return baohanh;
    }

    public void setBaohanh(String baohanh) {
        this.baohanh = baohanh;
    }

    public String getMau() {
        return mau;
    }

    public void setMau(String mau) {
        this.mau = mau;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getPartnumber() {
        return partnumber;
    }

    public void setPartnumber(String partnumber) {
        this.partnumber = partnumber;
    }

    public String getTheheCPU() {
        return theheCPU;
    }

    public void setTheheCPU(String theheCPU) {
        this.theheCPU = theheCPU;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getChipdohoa() {
        return chipdohoa;
    }

    public void setChipdohoa(String chipdohoa) {
        this.chipdohoa = chipdohoa;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getManhinh() {
        return manhinh;
    }

    public void setManhinh(String manhinh) {
        this.manhinh = manhinh;
    }

    public String getLuutru() {
        return luutru;
    }

    public void setLuutru(String luutru) {
        this.luutru = luutru;
    }

    public String getSocongluutru() {
        return socongluutru;
    }

    public void setSocongluutru(String socongluutru) {
        this.socongluutru = socongluutru;
    }

    public String getKieukheM2() {
        return kieukheM2;
    }

    public void setKieukheM2(String kieukheM2) {
        this.kieukheM2 = kieukheM2;
    }

    public String getCongxuathinh() {
        return congxuathinh;
    }

    public void setCongxuathinh(String congxuathinh) {
        this.congxuathinh = congxuathinh;
    }

    public String getCongketnoi() {
        return congketnoi;
    }

    public void setCongketnoi(String congketnoi) {
        this.congketnoi = congketnoi;
    }

    public String getKetnoikhongday() {
        return ketnoikhongday;
    }

    public void setKetnoikhongday(String ketnoikhongday) {
        this.ketnoikhongday = ketnoikhongday;
    }

    public String getBanphim() {
        return banphim;
    }

    public void setBanphim(String banphim) {
        this.banphim = banphim;
    }

    public String getHdh() {
        return hdh;
    }

    public void setHdh(String hdh) {
        this.hdh = hdh;
    }

    public String getKichthuoc() {
        return kichthuoc;
    }

    public void setKichthuoc(String kichthuoc) {
        this.kichthuoc = kichthuoc;
    }

    public String getKhoiluong() {
        return khoiluong;
    }

    public void setKhoiluong(String khoiluong) {
        this.khoiluong = khoiluong;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getMic() {
        return mic;
    }

    public void setMic(String mic) {
        this.mic = mic;
    }

    public String getBaomat() {
        return baomat;
    }

    public void setBaomat(String baomat) {
        this.baomat = baomat;
    }

    public String getDenled() {
        return denled;
    }

    public void setDenled(String denled) {
        this.denled = denled;
    }

    public String getPhukien() {
        return phukien;
    }

    public void setPhukien(String phukien) {
        this.phukien = phukien;
    }

    public String toString() {
        return "ProductDetail{" +
                "id=" + id +
                ", maSP='" + maSP + '\'' +
                ", baohanh=" + baohanh +
                ", mau='" + mau + '\'' +
                ", series='" + series + '\'' +
                ", partnumber='" + partnumber + '\'' +
                ", theheCPU='" + theheCPU + '\'' +
                ", cpu='" + cpu + '\'' +
                ", chipdohoa='" + chipdohoa + '\'' +
                ", ram='" + ram + '\'' +
                ", manhinh='" + manhinh + '\'' +
                ", luutru='" + luutru + '\'' +
                ", socongluutru='" + socongluutru + '\'' +
                ", kieukheM2='" + kieukheM2 + '\'' +
                ", congxuathinh='" + congxuathinh + '\'' +
                ", congketnoi='" + congketnoi + '\'' +
                ", ketnoikhongday='" + ketnoikhongday + '\'' +
                ", banphim='" + banphim + '\'' +
                ", hdh='" + hdh + '\'' +
                ", kichthuoc='" + kichthuoc + '\'' +
                ", khoiluong='" + khoiluong + '\'' +
                ", pin='" + pin + '\'' +
                ", mic='" + mic + '\'' +
                ", baomat='" + baomat + '\'' +
                ", denled='" + denled + '\'' +
                ", phukien='" + phukien + '\'' +
                '}';
    }
}
