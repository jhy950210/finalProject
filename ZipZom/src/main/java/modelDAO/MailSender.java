package modelDAO;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {
	private String fromEmail;
	private String fromPassword;
	
	public MailSender() {
		// TODO Auto-generated constructor stub
		this.fromEmail = "codetesting32@gmail.com";
		this.fromPassword = "test1234$";
	}
	
	public void sendMailMain(String email, String authNumber) {
		// TODO Auto-generated method stub
		String toEmail = email;
		String toName = "ZipZom";
		String oSubject = "요청하신 인증번호입니다.";
		// StringBuffer
		// String content = "<html><head><meta charset='utf-8'/></head><body><font color='red'>내용 테스트</font></body></html>";
		// 이미지는 url로 구성된 절대경로여야됨 / 상대경로 X
		// https://ssl.pstatic.net/tveta/libs/1302/1302779/a8b1f5be81fa985e1e1c_20200922155128263.jpg
		StringBuffer content = new StringBuffer();
		content.append("<html>");
		content.append("<head>");
		content.append("<meta charset='utf-8'/>");
		content.append("</head>");
		content.append("<body>");
		content.append("<br /> <h1'>" + authNumber + "</h1> <br />");
		content.append("</body>");
		content.append("</html>");
		
		MailSender mailSender = new MailSender();
		mailSender.sendMail(toEmail, toName, oSubject, content.toString());
	}
	
	public void sendMail(String toEmail, String toName, String subject, String content) {
		
		try {
			// 서버 연결 환경
			Properties props = new Properties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			
			// 인증
			MyAuth auth = new MyAuth(fromEmail, fromPassword);
			Session session = Session.getDefaultInstance(props, auth);
			
			// 메시지
			MimeMessage msg = new MimeMessage(session);
			msg.setHeader("content-type", "text/plain; charset=utf-8");
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail, toName, "utf-8"));
			
			// 보낼 제목
			msg.setSubject(subject);
			// 보낼 내용
			msg.setContent(content, "text/html; charset=utf-8");
			// 보낼 시간
			msg.setSentDate(new java.util.Date());
			
			Transport.send(msg);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

