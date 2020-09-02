package kr.ac.kopo.numberTicket.vo;

public class AnalysisVO {

	private int analysisSeq;
	private int analysisNumber;
	private String analysisDate;
	private String analysisTime;
	private String usersId;
	private String usersName;
	private String branchId;
	private String tellerId;
	private String serviceId;
	private String branchName;
	public int getAnalysisSeq() {
		return analysisSeq;
	}
	public int getAnalysisNumber() {
		return analysisNumber;
	}
	public String getAnalysisDate() {
		return analysisDate;
	}
	public String getAnalysisTime() {
		return analysisTime;
	}
	public String getUsersId() {
		return usersId;
	}
	public String getUsersName() {
		return usersName;
	}
	public String getBranchId() {
		return branchId;
	}
	public String getTellerId() {
		return tellerId;
	}
	public String getServiceId() {
		return serviceId;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setAnalysisSeq(int analysisSeq) {
		this.analysisSeq = analysisSeq;
	}
	public void setAnalysisNumber(int analysisNumber) {
		this.analysisNumber = analysisNumber;
	}
	public void setAnalysisDate(String analysisDate) {
		this.analysisDate = analysisDate;
	}
	public void setAnalysisTime(String analysisTime) {
		this.analysisTime = analysisTime;
	}
	public void setUsersId(String usersId) {
		this.usersId = usersId;
	}
	public void setUsersName(String usersName) {
		this.usersName = usersName;
	}
	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}
	public void setTellerId(String tellerId) {
		this.tellerId = tellerId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public AnalysisVO(int analysisSeq, int analysisNumber, String analysisDate, String analysisTime, String usersId,
			String usersName, String branchId, String tellerId, String serviceId, String branchName) {
		super();
		this.analysisSeq = analysisSeq;
		this.analysisNumber = analysisNumber;
		this.analysisDate = analysisDate;
		this.analysisTime = analysisTime;
		this.usersId = usersId;
		this.usersName = usersName;
		this.branchId = branchId;
		this.tellerId = tellerId;
		this.serviceId = serviceId;
		this.branchName = branchName;
	}
	public AnalysisVO() {
		super();
	}
	@Override
	public String toString() {
		return "AnalysisVO [analysisSeq=" + analysisSeq + ", analysisNumber=" + analysisNumber + ", analysisDate="
				+ analysisDate + ", analysisTime=" + analysisTime + ", usersId=" + usersId + ", usersName=" + usersName
				+ ", branchId=" + branchId + ", tellerId=" + tellerId + ", serviceId=" + serviceId + ", branchName="
				+ branchName + "]";
	}
		
}
