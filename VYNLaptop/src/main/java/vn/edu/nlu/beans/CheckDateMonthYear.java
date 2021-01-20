package vn.edu.nlu.beans;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CheckDateMonthYear {
    private String dateSend  ;
    private String dateReceive ;
    public CheckDateMonthYear(String dateSend , String dateReceive){
        this.dateSend = dateSend ;
        this.dateReceive = dateReceive ;

    }
    public CheckDateMonthYear(){

    }

    public String getDateSend() {
        return dateSend;
    }

    public void setDateSend(String dateSend) {
        this.dateSend = dateSend;
    }

    public String getDateReceive() {
        return dateReceive;
    }

    public void setDateReceive(String dateReceive) {
        this.dateReceive = dateReceive;
    }

    public boolean check(){
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yy HH:mm:ss");

        Date d1 = null;

        Date d2 = null;

        try {

            d1 = format.parse(getDateSend());

            d2 = format.parse(getDateReceive());
            long diff = d2.getTime() - d1.getTime();
            long seconds = diff / 1000;
            if(seconds>86400) return false ;

        } catch (ParseException e) {

        }

        return true ;
    }
    public String takeDateNow(){
        String format = "" ;
        Calendar cal = Calendar.getInstance();
        Date date = cal.getTime();
        SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        System.out.println("Ngày giờ hiện tại sau khi định dạng là " + sdf2.format(date));
            return format+sdf2.format(date) ;
    }

    public static void main(String[] args) {
        CheckDateMonthYear d = new CheckDateMonthYear() ;
        System.out.println("Ngày giờ hiện tại sau khi định dạng là " + d.takeDateNow());
    }
}
