package Package;
import java.io.Serializable;

public class GetJobClass implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int jobId;
	private int postUserId;
	private int assignUserId;
	private int categoryId;
	private String description;
	private float pay;
	private String status;
	private String title;
	private String addTime;
	private int deadline;
	private String location;
	private int fieldId;
	private String deadlines;
	private String payType;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getJobId() {
		return jobId;
	}

	public int getPostUserId() {
		return postUserId;
	}

	public int getAssignUserId() {
		return assignUserId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public String getDescription() {
		return description;
	}

	public float getPay() {
		return pay;
	}

	public String getStatus() {
		return status;
	}

	public String getTitle() {
		return title;
	}

	public String getAddTime() {
		return addTime;
	}

	public int getDeadline() {
		return deadline;
	}

	public String getLocation() {
		return location;
	}

	public int getFieldId() {
		return fieldId;
	}

	
	public void setJobId(int jobid) {
		this.jobId = jobid;
	}

	public void setPostUserId(int postUserId) {
		this.postUserId = postUserId;
	}

	public void setAssignUserId(int assignUserId) {
		this.assignUserId = assignUserId;
	}

	public void setDescription(String desc) {
		this.description = desc;
	}

	public void setPay(float pay) {
		this.pay = pay;
	}

	public void setStatus(String status) {
		this.status= status;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setDeadline(int deadline) {
		this.deadline = deadline;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public void setFieldId(int fieldId) {
		this.fieldId = fieldId;
	}

	/**
	 * @return the deadlines
	 */
	public String getDeadlines() {
		return deadlines;
	}

	/**
	 * @param deadlines the deadlines to set
	 */
	public void setDeadlines(String deadlines) {
		this.deadlines = deadlines;
	}

	/**
	 * @return the payType
	 */
	public String getPayType() {
		return payType;
	}

	/**
	 * @param payType the payType to set
	 */
	public void setPayType(String payType) {
		this.payType = payType;
	}

	
}
