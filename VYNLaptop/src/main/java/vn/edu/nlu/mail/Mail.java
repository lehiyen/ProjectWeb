package vn.edu.nlu.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class Mail {
    public static void main(String[] args){

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true"); //TLS
        String username="hongvien280900@gmail.com";
        String password="dnshrwmpuyrhupvj";

        Session session = Session.getInstance(props,
                new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username,password);
                }
        });
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress("hongvien280900@gmail.com","Nguyen Hong Vien"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("hongvien280900@gmail.com"));
            message.setSubject("HI, YOU");
            message.setText("Hello, I am nguyen hong vien");
            Transport.send(message);
            System.out.println("Done");
        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
}
