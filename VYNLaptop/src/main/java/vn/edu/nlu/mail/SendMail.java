package vn.edu.nlu.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;

public class SendMail {
     private String desMail ;
    public SendMail(String desMail) {
        this.desMail = desMail ;
    }
    public String  getDesMail(){
        return desMail ;
    }
    public  void  send(){
        Properties  pro = new Properties() ;
        pro.put("mail.smtp.host" , "smtp.gmail.com");
        pro.put("mail.smtp.port" ,"587") ;
        pro.put("mail.smtp.auth" , "true");
        pro.put("mail.smtp.starttls.enable" ,"true");

    String username = "lehiyn580@gmail.com" ;
    String password = "kzrhiayxuwbcqpbg" ;
    Session session = Session.getInstance(pro,
            new Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username , password) ;
        }
    });
        Message message = new MimeMessage(session) ;
        try{
            String mess = "http://localhost:8080/VYNLaptop/sendRedirectPageForgotPass?mail="+getDesMail() ;
            message.setFrom(new InternetAddress("lehiyn580@gmail.com" , "Shop Laptop VYN"));
            message.setRecipients(Message.RecipientType.TO ,
                    InternetAddress.parse(getDesMail()));
            message.setSubject("Đặt lại mật khẩu");
            message.setText(mess);
            Transport.send(message);
            System.out.println("Done");

        } catch (MessagingException | UnsupportedEncodingException e){
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        SendMail  mail = new SendMail("lehaiyen.cattai@gmail.com") ;
        mail.send();
        Calendar cal = Calendar.getInstance();
        Date date = cal.getTime();
        // định dạng ngày giờ hiện tại theo cấu trúc "dd/MM/yyyy HH:mm:ss"
        // trong đó "HH" là giờ, "mm" là phút và "ss" là giây
        // "HH" là định dạng 24 giờ, và "hh" là định dạng 12 giờ
        SimpleDateFormat sdf2 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        System.out.println("Ngày giờ hiện tại sau khi định dạng là " + sdf2.format(date));

        // hiển thị ngày giờ theo định dạng 12 giờ
        // với định dạng 12 giờ thì chúng ta sẽ thêm vào "aaa"
        // trong đó "aaa" đại diện cho AM/PM
        SimpleDateFormat sdf3 = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss aaa");
        System.out.println("Ngày giờ hiện tại sau khi định dạng là " + sdf3.format(date));

    }
}

