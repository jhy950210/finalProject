package modelDAO;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		encryption enc = new encryption();
		String result = "";
		String authNumber = "";
		for( int i = 0; i < 6; i ++) {
			result += String.valueOf((int)((Math.random()*10000)%10));
		}
		authNumber = enc.encryptionMain(result);
		System.out.println(authNumber);
		System.out.println(result);
	}

}
