package Orca.config;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
 
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
public class MailSend {
    
    public static String MailSend(String email) {
        Properties prop = System.getProperties();
        String checkcode = String.valueOf((int)Math.floor(Math.random()*1000000));
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
        
        Authenticator auth = new MailAuth();
        
        Session session = Session.getDefaultInstance(prop, auth);
        
        MimeMessage msg = new MimeMessage(session);
    
        try {
            msg.setSentDate(new Date());
            
            msg.setFrom(new InternetAddress("test1234@gmail.com", "VISITOR"));
            InternetAddress to = new InternetAddress(email);         
            msg.setRecipient(Message.RecipientType.TO, to);            
            msg.setSubject("Orca 인증번호 이메일서비스", "UTF-8");            
            msg.setText("회원님의 인증번호"+checkcode+"가 발급 되었습니다", "UTF-8");            
            
            Transport.send(msg);
            return checkcode;
            
        } catch(AddressException ae) {            
            System.out.println("AddressException : " + ae.getMessage());
            return null;
        } catch(MessagingException me) {            
            System.out.println("MessagingException : " + me.getMessage());
            return null;
        } catch(UnsupportedEncodingException e) {
            System.out.println("UnsupportedEncodingException : " + e.getMessage());
            return null;
        }
                
    }
}