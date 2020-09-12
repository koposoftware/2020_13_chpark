package kr.ac.kopo.numberTicket.vo;

public class BasketVO {
	
	private String userId;
	private String branchName;
	public BasketVO() {
		super();
	}
	public BasketVO(String userId, String branchName) {
		super();
		this.userId = userId;
		this.branchName = branchName;
	}
	public String getUserId() {
		return userId;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	@Override
	public String toString() {
		return "BasketVO [userId=" + userId + ", branchName=" + branchName + "]";
	}
	
	
}
