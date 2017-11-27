package shoeshop.services;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class MailerService {
	@Autowired
	JavaMailSender mailSender;
	
	public void send(String to, String subject, String body) {
		try {
			//Viết thư (tạo mail)
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mail, true, "utf-8");
			helper.setFrom("nguyenhuuthien27296@gmail.com", "ShoeShop Web Master");
			helper.setTo(to);
			helper.setReplyTo("nguyenhuuthien27296@gmail.com");
			helper.setSubject(subject);
			helper.setText(body, true);
			
			//Gửi mail
			mailSender.send(mail);
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException(e);
		}
		
	}
}
