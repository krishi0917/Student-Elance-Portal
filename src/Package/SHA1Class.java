package Package;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;



public class SHA1Class {

/*	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String password = "123456";
		String encrypted = encryptPassword(password);
		System.out.println("Encrypted password is: " + encrypted);
	}*/
	
	//encrypt the password using SHA1
	
	public String encryptPassword(String password)
	{
	    String sha1 = "";
	    try
	    {
	        MessageDigest crypt = MessageDigest.getInstance("SHA-1");
	        crypt.reset();
	        crypt.update(password.getBytes("UTF-8"));
	        
	        //convert byte string to hex
	        sha1 = convertByteToHex(crypt.digest());
	       /* String shaHex = new BigInteger(1, crypt.digest()).toString(16);
	        System.out.println("Encryption using BigInt "+ shaHex);*/
	    }
	    catch(NoSuchAlgorithmException e)
	    {
	        e.printStackTrace();
	    }
	    catch(UnsupportedEncodingException e)
	    {
	        e.printStackTrace();
	    }
	    return sha1;
	}

	//function for converting byte to hex
	
	private static String convertByteToHex(final byte[] hash)
	{
		System.out.println("Hash in byte " + hash);
	    Formatter formatter = new Formatter();
	    for (byte b : hash)
	    {
	        formatter.format("%02x", b);
	    }
	    
	    String result = formatter.toString();
	    formatter.close();
	    System.out.println("Hash in hex "+ result);
	    return result;
	}		

}
