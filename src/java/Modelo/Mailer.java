package Modelo;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mailer {
public static void send(String para,String sujeto,String mensaje){

final String user="proyectogesticom@gmail.com";//cambiará en consecuencia al servidor utilizado
final String pass="Gesticom1234";

//1st paso) Obtener el objeto de sesión

Properties props = new Properties();
        props.setProperty("mail.smtp.host", "smtp.gmail.com"); // envia 
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.port", "25");
        props.setProperty("mail.smtp.starttls.required", "false");
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");



Session session = Session.getInstance(props, new javax.mail.Authenticator() {
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(user, pass);
    }
});



//2nd paso)compose message
try {
 MimeMessage message = new MimeMessage(session);
 message.setFrom(new InternetAddress(user));
 message.addRecipient(Message.RecipientType.TO,new InternetAddress(para));
 message.setSubject(sujeto);
 message.setText(mensaje);

 message.setContent("<img src='http://i62.tinypic.com/cn5le.png' border='0' alt='subir imagen' />"
         +"</br>"+"<h3>Hola: "+para+"</h3>"
         +"</br>"
         + "</br>" 
         +"Bienvenido a nuestro  sistema  GESTICOM.    "
         + "</br>" 
         + mensaje
         +"</br>"
         +"</br>    "
         +"Atentamente,    "
         +"</br>"
         +"</br>"         
         +"</br>"
         +"El Equipo Gesticom.com"
         
         , "text/html");

 
 
 //3rd paso)send message
 Transport.send(message);

 System.out.println("Done");

 } catch (MessagingException e) {
	throw new RuntimeException(e);
 }
	
}
}
