package Package;
//import java.beans.Statement;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import java.util.Currency;
import java.util.concurrent.ExecutionException;

import org.apache.catalina.User;

//import com.sun.corba.se.pept.transport.Connection;


public class DBconnect {

	private Connection con = null;
	private Statement st;
	private Statement st1;
	private ResultSet rs;
	private String query;
	private String username = "";
	private String password = "";
	PreparedStatement preparedStatement = null;
	public DBconnect(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-01.cleardb.net:3306/ad_22a4bacfb7822a9", "b5bdf0a93bbbaa", "1db0f32a");
			st =con.createStatement();
		}catch(Exception ex){
			System.out.println("Error :" + ex);
		}
	}
	
/**
 * Verify the user login
 * @param inUserName
 * @param inPassword
 * @return
 */
	
	protected String verifyLogin(String inUserName, String inPassword){
		String outPassword = "";
		username = inUserName;
		password = inPassword;
		
		try{
			query = "select PASSWORD from LOGINDETAILS where USERNAME = " + "'" + username + "'";
			System.out.println(query);
			rs = st.executeQuery(query);
			if(!rs.next()){
				System.out.println("User Does not exist");
				return "";
			}
			else{
				outPassword = rs.getString("PASSWORD");
				System.out.println("password from db " + outPassword);
				if(outPassword.isEmpty() || outPassword.equals(null)){
					return "";
				}
				if(outPassword.equals(password)){
					try{
						String firstName = "";
						int userId = 0;
						query = "select u.FIRSTNAME, l.USERID from USERDETAILS u, LOGINDETAILS l where l.USERNAME = " + "'" + username +"'" + " and u.USERID = l.USERID";
						rs = st.executeQuery(query);
						while(rs.next()){
						firstName = rs.getString("FIRSTNAME");
						userId = rs.getInt("USERID");
						}
						return firstName + "," + userId;
					}catch(Exception ee){
						System.out.println("Error in fetching first name from userdetails " + ee);
						return "";
					}
					
				}
				else{
					return "";
				}
			}
			
		}catch(Exception ex){
			System.out.println("Database Error: " + ex);
		}
		return "";
	}
	
	/**
	 * Register a new user
	 */
	protected String registerUser(String password, String firstName, String lastName, String university, String fields, 
			float rate, String email,String tagLine){
		
			int userID=0;
		
		try{
			query = "insert into LOGINDETAILS (USERNAME,PASSWORD) values (" + "'"+email+"'" + "," + "'"+password+"'" +")" ;
			System.out.println(query);
			int insertStatus = st.executeUpdate(query);
			System.out.println("Login details Insert Status  "+insertStatus);
			if(insertStatus == 1){
			query = "select USERID from LOGINDETAILS where USERNAME = " + "'"+email+"'" ;
			System.out.println(query);
			rs = st.executeQuery(query);
			while(rs.next()){
				userID = rs.getInt("USERID");
			}
			System.out.println("New User " + userID);
			query = "insert into USERDETAILS (USERID, EMAIL, FIRSTNAME, LASTNAME, UNIVERSITY, FIELDS, HOURLYRATE, TAGLINE) values ("
			+ userID + ",'"+ email+"','" +firstName+ "','" +lastName+ "','"+university+"','"+fields+"',"+rate + ",'"+tagLine+"'" +")";
			System.out.println(query);
			insertStatus = st.executeUpdate(query);
			System.out.println("User details insert status " + insertStatus);
			}
			return firstName +"," + userID;
		}catch(Exception ex){
			System.out.println("Error in Inserting : " + ex);
			if (userID !=0){
				try{
				query = "delete from LOGINDETAILS where USERID = " + userID;
				st.executeUpdate(query);
				}catch(Exception e){
					System.out.println("Error in catch block, Cannot remove user.");
				}
			}
		}

		return "";
	}
	
	
	/**
	 * Function for getting the jobs for all users
	 * @param category
	 * @param field
	 * @return
	 */
	protected List<GetJobClass> getJobs(String category, String field, int userId){
		
		List<GetJobClass> jobs = new ArrayList<GetJobClass>();
		int categoryId  = 0;
		int fieldId = 0;
		String[] op = {"111","222"};
		if (userId == 0){
			if(category.equalsIgnoreCase("all") && field.equalsIgnoreCase("all")){
				query="select * from jobs";
			}
			else {
				String output = getCategoryAndField(category,field);
					op = output.split(",");
					if (!op[0].isEmpty())
					categoryId = Integer.parseInt(op[0]);
			//	System.out.println("category id = " + categoryId + "Field ID = " + fieldId );
				if(field.equalsIgnoreCase("all")){
					query="select * from jobs where categoryid = " + categoryId;
				}
				else{
					if (!op[1].isEmpty())
					fieldId = Integer.parseInt(op[1]);
					query="select * from jobs where categoryid = " + categoryId + " and " +  " fieldid = " + fieldId ;
				}
			}
		}
		else {
			if(category.equalsIgnoreCase("all") && field.equalsIgnoreCase("all")){
				query="select * from jobs where postuserid <> " + userId;
			}
			else {
				String output = getCategoryAndField(category,field);
					op = output.split(",");
					if (!op[0].isEmpty())
					categoryId = Integer.parseInt(op[0]);
			//	System.out.println("category id = " + categoryId + "Field ID = " + fieldId );
				if(field.equalsIgnoreCase("all")){
					query="select * from jobs where categoryid = " + categoryId + " and postuserid <> " + userId;
				}
				else{
					if (!op[1].isEmpty())
					fieldId = Integer.parseInt(op[1]);
					query="select * from jobs where categoryid = " + categoryId + " and " +  " fieldid = " + fieldId + " and postuserid <> " + userId;
				}
			}
		}
		try{
			rs = st.executeQuery(query);
			
			while(rs.next()){
				GetJobClass g = new GetJobClass();
				g.setJobId(rs.getInt("JOBID"));
				g.setPostUserId(rs.getInt("POSTUSERID"));
				g.setAssignUserId(rs.getInt("ASSIGNEDUSERID"));
				g.setDeadlines(rs.getString("DEADLINE"));
				g.setDescription(rs.getString("DESCRIPTION"));
				g.setPay(rs.getInt("PAY"));
				g.setStatus(rs.getString("STATUS"));
				g.setCategoryId(rs.getInt("CATEGORYID"));
				g.setTitle(rs.getString("TITLE"));
				g.setAddTime(rs.getString("TIME"));
				g.setLocation(rs.getString("LOCATION"));
				g.setFieldId(rs.getInt("FIELDID"));
				g.setPayType(rs.getString("PAYTYPE"));
				jobs.add(g);
			}
		}catch(Exception ee){
			System.out.println("Unable to get jobs list for category and field "+ category + " " + field + ee);
			
		}
		
		return jobs;
	}
	
	/**
	 * Get the categoryId and fieldsID for any  category and field
	 * @param category
	 * @param field
	 * @return
	 */
	
	protected String getCategoryAndField(String category, String field){
		String output="";
		
		try{
			query = "select categoryid from Categories where categoryname = "+ "'" + category + "'" + " " + "limit 1";
			System.out.println("Query for category id " + query);
			rs = st.executeQuery(query);
			while(rs.next()){
				output = "" + rs.getInt("CATEGORYID");
				System.out.println("Category Id is " + output);
			}
		}catch(Exception e){
			System.out.println("Unable to get the category for the product " + e);
		}
		if (!field.equalsIgnoreCase("all")){
			try{
				query = "select fieldid from FIELDS where FIELDNAME = "+ "'" + field + "'" + " " + "limit 1";
				System.out.println("Query for Field id " + query);
				rs = st.executeQuery(query);
				while(rs.next()){
					output = output + "," + rs.getInt("FIELDID");
				}
			}catch(Exception ee){
				System.out.println("unable to fetch the field ID for " + field);
			}
		}
		return output;
		
	}
	/**
	 * Get all categories and fields
	 * @return
	 */
	
	protected ArrayList<GetCategoryAndField> getAllCategoriesAndFields(){
		
		ArrayList<GetCategoryAndField> cAndF = new ArrayList<GetCategoryAndField>();
		
		query = "SELECT DISTINCT C.CATEGORYNAME, F.FIELDNAME FROM CATEGORIES C, FIELDS F WHERE  C.CATEGORYID = F.CATEGORYID";
		try{
			rs = st.executeQuery(query);
			
			while(rs.next()){
				GetCategoryAndField cf = new GetCategoryAndField();
				cf.setCategory(rs.getString("CATEGORYNAME"));
				cf.setField(rs.getString("FIELDNAME"));
				cAndF.add(cf);
			}
			
		}catch (Exception ex){
			System.out.println("Cannot retrieve all categories and fields " + ex);
		}	
		
		return cAndF;
	}
	
	/**
	 * Function to post the proposal of the user to the database
	 * @param pUserId
	 * @param pJobId
	 * @param proposal
	 * @param proposalTime
	 * @return
	 */
	
	protected int postUserProposal(int pUserId, int pJobId, String proposal, String proposalTime, int price, String payType){
		int status = 0;
		
		query = "Insert into PROPOSAL (proposeduserid, jobid, proposal, proposaltime, price, paytype) values "
				+ "(" + pUserId + "," + pJobId + ",'"+ proposal + "','" + proposalTime + "'," + price + ",'" + payType + "')";
		System.out.println("under postUserProposal query " + query);
		try{
			status = st.executeUpdate(query);
			
		}catch(Exception ex){
			System.out.println("Unable to insert the proposal for the user " + ex);
		}
		
		return status;
	}
	
	/**
	 * Get the jos list for the logged in user
	 * @param userId
	 * @param value
	 * @return
	 */
	
	protected List<GetJobClass> getMyJobs(int userId, String value){
		
		List<GetJobClass> jobs = new ArrayList<GetJobClass>();
		if(value.equalsIgnoreCase("all")){
			query = "select * from jobs where postuserid = "+ userId;
		}
		else if(value.equalsIgnoreCase("completed")){
			query = "select * from jobs where postuserid = "+ userId + " and status = 'completed'";
		}
		else if(value.equalsIgnoreCase("myJobs")){
			query = "select * from jobs where assigneduserid = "+ userId;
		}
		else if(value.equalsIgnoreCase("completedByMe")){
			query = "select * from jobs where assigneduserid = "+ userId + " and status = 'completed'";
		}
		try{
			rs = st.executeQuery(query);
			
			while(rs.next()){
				GetJobClass g = new GetJobClass();
				g.setJobId(rs.getInt("JOBID"));
				g.setPostUserId(rs.getInt("POSTUSERID"));
				g.setAssignUserId(rs.getInt("ASSIGNEDUSERID"));
				g.setDeadlines(rs.getString("DEADLINE"));
				g.setDescription(rs.getString("DESCRIPTION"));
				g.setPay(rs.getInt("PAY"));
				g.setStatus(rs.getString("STATUS"));
				g.setCategoryId(rs.getInt("CATEGORYID"));
				g.setTitle(rs.getString("TITLE"));
				g.setAddTime(rs.getString("TIME"));
				g.setLocation(rs.getString("LOCATION"));
				g.setFieldId(rs.getInt("FIELDID"));
				jobs.add(g);
			}
		}catch(Exception ee){
			System.out.println("unable to get jobs for userId "+ userId + "  "  + ee);
			
		}
		return jobs;
	}
	
	/**
	 * Get the proposals for the jobs posted by the user
	 * @param userId
	 * @return
	 * 
	 */
	
	
	protected List<UserAndProposal> getMyProposals(int userId, String proposal){
		
		List<UserAndProposal> proposals = new ArrayList<UserAndProposal>();
		
		if (proposal.equalsIgnoreCase("proposalsForMe")){
			query = "select j.jobid, j.title, p.proposalid, p.proposal, p.proposaltime, u.userid, u.firstname, u.lastname, u.university, u.fields, u.experience,"
					+ "u.hourlyrate, u.city, u.email from jobs j, proposal p, userdetails u where j.postuserid = " + userId + " and "
							+ "j.jobid = p.jobid and p.proposeduserid = u.userid and p.status <> 'assigned'";
			
			try{
				rs = st.executeQuery(query);
				while (rs.next()){
					UserAndProposal up = new UserAndProposal();
					up.setProposalId(rs.getInt("PROPOSALID"));
					up.setJobId(rs.getInt("JOBID"));
					up.setJobTitle(rs.getString("TITLE"));
					up.setProposal(rs.getString("PROPOSAL"));
					up.setProposalTime(rs.getString("PROPOSALTIME"));
					up.setUserId(rs.getInt("USERID"));
					up.setFirstName(rs.getString("FIRSTNAME"));
					up.setLastName(rs.getString("LASTNAME"));
					up.setUniversity(rs.getString("UNIVERSITY"));
					up.setFields(rs.getString("FIELDS"));
					up.setExperience(rs.getFloat("EXPERIENCE"));
					up.setRate(rs.getFloat("HOURLYRATE"));
					up.setCity(rs.getString("CITY"));
					up.setEmail(rs.getString("EMAIL"));
					proposals.add(up);	
				}
				return proposals;
				
			}catch(Exception ex){
				System.out.println("getMyproposal error " + ex);
			}
		}
		else if(proposal.equalsIgnoreCase("myProposals")){
			query = "select j.jobid, j.title, j.description,  p.proposal, p.proposaltime from jobs j, proposal p where p.proposeduserid = "+userId;
			
			try{
				rs = st.executeQuery(query);
				while (rs.next()){
					UserAndProposal up = new UserAndProposal();
					up.setJobId(rs.getInt("JOBID"));
					up.setJobTitle(rs.getString("TITLE"));
					up.setProposal(rs.getString("PROPOSAL"));
					up.setProposalTime(rs.getString("PROPOSALTIME"));
					up.setDescription(rs.getString("DESCRIPTION"));
					proposals.add(up);
				}
				
				return proposals;
			}catch(Exception e){
				System.out.println("problem in fetching the proposals given by me "+ e);
			}
			
		}
		
		return proposals;
	}
	
	
	/**
	 * 
	 * @param userId
	 * @param interest
	 * @return
	 * Update the interest for the user
	 */
	
	protected int updateInterest(int userId, String interest){
		int status = 0;
		query = "Update userdetails set interest = '" + interest + "' where userid = " + userId;
		System.out.println(query);
		try{
			
			status = st.executeUpdate(query);
			return status;
			
		}catch(Exception e){
			System.out.println("Cannot update the user interest " + e);
		}
		
		return status;
	}
	

	protected void close(){
		try{
			con.close();
		}catch(Exception e){
			System.out.println("Cannot close connection "+ e);
		}
	}
	
	/**
	 * Inserting new job
	 * @param userId
	 * @param desc
	 * @param pay
	 * @param category
	 * @param field
	 * @param jobName
	 * @param deadline
	 * @param payType
	 * @return
	 */
	
	protected int postJob(int userId, String desc , int pay, int category, int field, String jobName, String deadline, String payType){
		int status = 0;
		
		query = "Insert into Jobs (postuserid, description, pay, status, categoryid, fieldid, title, deadline, paytype) values ("
				+ userId + ",'" + desc+"'," + pay + ",'unassigned'," + category + "," + field + ",'" + jobName + "','" +deadline + "','" +payType + "' )";
		
		try{
			status = st.executeUpdate(query);
			return status;
		}catch(Exception ex){
			System.out.println("unable to insert job for user "+ ex);
		}
		
		return status;
	}
	
	protected int awardJob(int proposerid, int jobid, int proposalId){
		int status = 0;
		query = "update proposal set status = 'assigned' where proposalid = " + proposalId;
		System.out.println(query);
		try{
			status = st.executeUpdate(query);
			if(status == 1){
				query = "update jobs set assigneduserid = " + proposerid + " and status = 'assigned' where jobid = " + jobid;
				System.out.println(query);
				try{
					status = st.executeUpdate(query);
				}catch(Exception ex){
					System.out.println("unable to update assigneduserid for job "+ jobid);
				}
			}
		}catch(Exception ex){
			System.out.println("unable to update status for job "+ jobid);
		}
		return status;
	}
}
