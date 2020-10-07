package modelDAO;

import java.io.UnsupportedEncodingException;

public class encryption {
	
	public String encryptionMain(String password) {
		
		byte[] encryptArray = org.apache.tomcat.util.codec.binary.Base64.encodeBase64(password.getBytes());        
		String encstr = "";
		try {
			encstr = new String(encryptArray,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}   
		
		return encstr;
	}
}
