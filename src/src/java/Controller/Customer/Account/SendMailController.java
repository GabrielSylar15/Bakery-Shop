package Controller.Customer.Account;


import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendMailController {

    public static void send(String to, String sub,String msg, final String user, final String pass, String link) {
        //create an instance of Properties Class   
        Properties props = new Properties();

        /* Specifies the IP address of your default mail server
     	   for e.g if you are using gmail server as an email sever
           you will pass smtp.gmail.com as value of mail.smtp host. 
           As shown here in the code. 
           Change accordingly, if your email id is not a gmail id
         */
        props.put("mail.smtp.host", "smtp.gmail.com");
        //below mentioned mail.smtp.port is optional
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        /* Pass Properties object(props) and Authenticator object   
           for authentication to Session instance 
         */
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

        try {

            /* Create an instance of MimeMessage, 
 	      it accept MIME types and headers 
             */
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(sub);
            message.setContent(msg, "text/html");
            message.setText(link);

            /* Transport class is used to deliver the message to the recipients */
            Transport.send(message);

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

//    public static void main(String[] args) {
//        String subject = "Your order has been processing.";
//        String link = "http://localhost:8080/src/HomepageController";
//        String message = "<!DOCTYPE html>\n"
//                + "<html lang=\"en\">\n"
//                + "    <h3 style=\"color: blue;\">Resgister Successfull, Click link to access systerm !</h3>\n"
//                + "    <a href=\"" + link + "\">Click here</a>\n"
//                + "</html>";
//        SendMail.send("hahuythai2001@gmail.com", subject, message, "hoangdxhe151343@fpt.edu.vn", "nguoichoihedep123", link);
        //vd để gửi email tới "dich@gmail.com" bằng email "nguon@gmail.com" pass "123456"
//        SendMail.send("dich@gmail.com", subject, message, "nguon@gmail.com", "123456");
    
}