package Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Database {
	private Connection con;
	private Statement st;
	private Statement st1;
	private ResultSet rs;
	private String query;
	private String username = "";
	private String password = "";
	
	public Database(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-01.cleardb.net:3306/ad_a65dfb72eb8d753", "b2d2fd7ffbad33", "95cac4ee");
			st =con.createStatement();
		}catch(Exception ex){
			System.out.println("Error :" + ex);
		}
	}
	
	protected ArrayList<EmailFields> getDataForEmail(){
		ArrayList<EmailFields> details  = new ArrayList<EmailFields>();
		query = "select EMAIL, FIELDS, INTEREST from USERDETAILS where userid <> 1008";
		try {
			rs = st.executeQuery(query);
			
			while(rs.next()){
				EmailFields ef = new EmailFields();
				ef.setEmail(rs.getString("EMAIL"));
				ef.setFields(rs.getString("FIELDS"));
				ef.setInterests(rs.getString("INTEREST"));
				System.out.println("email " + rs.getString("EMAIL"));
				details.add(ef);
			}
		}catch (Exception ex){
			System.out.println("Cannot get user details for sending email "+ ex);
		}

		return details;
	}
	
	protected String getSuggestedJobs(String condition){
		String jobs = "";
		query = "select title, pay from jobs where description like " + condition + " or title like "  + condition;
		System.out.println("query formed is " + query);
		try{
			rs = st.executeQuery(query);
			if(!rs.next()){
				System.out.println("No job suggestions");
				return "";
			}
			else{
					
				jobs  = rs.getString("Title") + "@  Pay: " + rs.getInt("PAY");
				while(rs.next()){
					//System.out.println("title " + rs.getString("TITLE"));
					jobs  = jobs + "%" + rs.getString("Title") + "@  Pay@ " + rs.getInt("PAY"); 
					//System.out.println("jobs from db " + jobs);
				}
			}
		}catch(Exception ex){
			System.out.println("Exception in getting data for jobs " + ex);
			
		}
		
		return jobs;
	}
	
	
}
