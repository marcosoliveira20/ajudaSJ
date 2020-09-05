package controller;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import model.Usuario;

public class teste {
	private static String email = "ajudasaojudas2@gmail.com";
	private static String senha = "grupoweb31";
	private static String msg;

	public static void main(String[] args) {

		try {
			Properties props = new Properties();
			/** Parâmetros de conexão com servidor Gmail */
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");

			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(email, senha);
				}
			});

			/** Ativa Debug para sessão */
			session.setDebug(true);

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(email));
			// Remetente
			// Destinatário(s)
			Address[] toUser = InternetAddress.parse("pedrozics@hotmail.com");

			message.setRecipients(Message.RecipientType.TO, toUser);
			message.setContent(msg, "text/html; charset=UTF-8");
			message.setSubject("Email de Boas vindas | Ajuda São Judas");
			message.setText("Olá " + " Sejá muito bem vindo, já está tudo pronto para o uso de sua conta!" + "<br>" + "<br>" + "<br>" + "teste");
			/** Método para enviar a mensagem criada */
			Transport.send(message);

			System.out.println("Feito!!!");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		} catch (Exception E) {
			E.printStackTrace();
		}
	}
}
