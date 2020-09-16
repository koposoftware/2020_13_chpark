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
	private String serviceName;
	private String branchName;
	private String tellerName;
	private int todayTotal;
	private int today100;
	private int today200;
	private int today300;
	private int today400;
	private int visit;
	
	
	public int getVisit() {
		return visit;
	}
	public void setVisit(int visit) {
		this.visit = visit;
	}
	public String getTellerName() {
		return tellerName;
	}
	public void setTellerName(String tellerName) {
		this.tellerName = tellerName;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public int getTodayTotal() {
		return todayTotal;
	}
	public int getToday100() {
		return today100;
	}
	public int getToday200() {
		return today200;
	}
	public int getToday300() {
		return today300;
	}
	public int getToday400() {
		return today400;
	}
	public void setTodayTotal(int todayTotal) {
		this.todayTotal = todayTotal;
	}
	public void setToday100(int today100) {
		this.today100 = today100;
	}
	public void setToday200(int today200) {
		this.today200 = today200;
	}
	public void setToday300(int today300) {
		this.today300 = today300;
	}
	public void setToday400(int today400) {
		this.today400 = today400;
	}
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
			String usersName, String branchId, String tellerId, String serviceId, String serviceName, String branchName,
			String tellerName, int todayTotal, int today100, int today200, int today300, int today400, int visit) {
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
		this.serviceName = serviceName;
		this.branchName = branchName;
		this.tellerName = tellerName;
		this.todayTotal = todayTotal;
		this.today100 = today100;
		this.today200 = today200;
		this.today300 = today300;
		this.today400 = today400;
		this.visit = visit;
	}
	
	public AnalysisVO() {
		super();
	}
	
	@Override
	public String toString() {
		return "AnalysisVO [analysisSeq=" + analysisSeq + ", analysisNumber=" + analysisNumber + ", analysisDate="
				+ analysisDate + ", analysisTime=" + analysisTime + ", usersId=" + usersId + ", usersName=" + usersName
				+ ", branchId=" + branchId + ", tellerId=" + tellerId + ", serviceId=" + serviceId + ", serviceName="
				+ serviceName + ", branchName=" + branchName + ", tellerName=" + tellerName + ", todayTotal="
				+ todayTotal + ", today100=" + today100 + ", today200=" + today200 + ", today300=" + today300
				+ ", today400=" + today400 + ", visit=" + visit + "]";
	}
		
}
