package Package;

/**
 * Badal Jain
 * @author SONY
 *24/11/2014
 *This class is used to get all the proposals for a requesting user and the details of the user who requested the proposal
 */
public class UserAndProposal {
	private int jobId;
	private int proposalId;
	private String jobTitle;
	private String Proposal;
	private String proposalTime;
	private int userId;
	private String firstName;
	private String lastName;
	private String university;
	private String fields;
	private float  experience;
	private float hourlyrate;
	private String city;
	private String email;
	private String description;
	
	/**
	 * @return the jobId
	 */
	public int getJobId() {
		return jobId;
	}
	/**
	 * @param jobId the jobId to set
	 */
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	/**
	 * @return the proposal
	 */
	public String getProposal() {
		return Proposal;
	}
	/**
	 * @param proposal the proposal to set
	 */
	public void setProposal(String proposal) {
		Proposal = proposal;
	}
	/**
	 * @return the proposalTime
	 */
	public String getProposalTime() {
		return proposalTime;
	}
	/**
	 * @param proposalTime the proposalTime to set
	 */
	public void setProposalTime(String proposalTime) {
		this.proposalTime = proposalTime;
	}
	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the university
	 */
	public String getUniversity() {
		return university;
	}
	/**
	 * @param university the university to set
	 */
	public void setUniversity(String university) {
		this.university = university;
	}
	/**
	 * @return the fields
	 */
	public String getFields() {
		return fields;
	}
	/**
	 * @param fields the fields to set
	 */
	public void setFields(String fields) {
		this.fields = fields;
	}
	/**
	 * @return the experience
	 */
	public float getExperience() {
		return experience;
	}
	/**
	 * @param experience the experience to set
	 */
	public void setExperience(float experience) {
		this.experience = experience;
	}
	/**
	 * @return the rate
	 */
	public float getRate() {
		return hourlyrate;
	}
	/**
	 * @param rate the rate to set
	 */
	public void setRate(float rate) {
		this.hourlyrate = rate;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the jobTitle
	 */
	public String getJobTitle() {
		return jobTitle;
	}
	/**
	 * @param jobTitle the jobTitle to set
	 */
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	public int getProposalId() {
		return proposalId;
	}
	public void setProposalId(int proposalId) {
		this.proposalId = proposalId;
	}
	

}
