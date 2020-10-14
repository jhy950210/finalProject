package modelDAO;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

// Google에서 사용자 인증
public class MyAuth extends Authenticator {
	private String userName;
	private String userPassword;

	public MyAuth(String userName, String userPassword) {
		this.userName = userName;
		this.userPassword = userPassword;
	}

	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		// TODO Auto-generated method stub
		return new PasswordAuthentication(userName, userPassword);
	}
}
