package kr.ac.kopo.numberTicket.vo;

public class UserTicketVO {
	private int numberticketNumber;
	private String serviceName;
	private String serviceId;
	private String branchName;
	private String numberticketDate;
	private String numberticketTime;
	private int standby;
	private int standbyTime;
	
	
	public int getStandbyTime() {
		return standbyTime;
	}
	public void setStandbyTime(int standbyTime) {
		this.standbyTime = standbyTime;
	}
	public int getNumberticketNumber() {
		return numberticketNumber;
	}
	public String getServiceName() {
		return serviceName;
	}
	public String getServiceId() {
		return serviceId;
	}
	public String getBranchName() {
		return branchName;
	}
	public String getNumberticketDate() {
		return numberticketDate;
	}
	public String getNumberticketTime() {
		return numberticketTime;
	}
	public int getStandby() {
		return standby;
	}
	public void setNumberticketNumber(int numberticketNumber) {
		this.numberticketNumber = numberticketNumber;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public void setNumberticketDate(String numberticketDate) {
		this.numberticketDate = numberticketDate;
	}
	public void setNumberticketTime(String numberticketTime) {
		this.numberticketTime = numberticketTime;
	}
	public void setStandby(int standby) {
		this.standby = standby;
	}
	public UserTicketVO(int numberticketNumber, String serviceName, String serviceId, String branchName,
			String numberticketDate, String numberticketTime, int standby, int standbyTime) {
		super();
		this.numberticketNumber = numberticketNumber;
		this.serviceName = serviceName;
		this.serviceId = serviceId;
		this.branchName = branchName;
		this.numberticketDate = numberticketDate;
		this.numberticketTime = numberticketTime;
		this.standby = standby;
		this.standbyTime = standbyTime;
	}
	public UserTicketVO() {
		super();
	}
	@Override
	public String toString() {
		return "UserTicketVO [numberticketNumber=" + numberticketNumber + ", serviceName=" + serviceName
				+ ", serviceId=" + serviceId + ", branchName=" + branchName + ", numberticketDate=" + numberticketDate
				+ ", numberticketTime=" + numberticketTime + ", standby=" + standby + ", standbyTime=" + standbyTime
				+ "]";
	}
	
		
}
