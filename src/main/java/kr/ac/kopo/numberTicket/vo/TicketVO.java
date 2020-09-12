package kr.ac.kopo.numberTicket.vo;

public class TicketVO {
	private int numberticketNumber;
	private int standby;
	private String serviceName;
	private String branchName;
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
	public int getStandby() {
		return standby;
	}
	public String getServiceName() {
		return serviceName;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setNumberticketNumber(int numberticketNumber) {
		this.numberticketNumber = numberticketNumber;
	}
	public void setStandby(int standby) {
		this.standby = standby;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public TicketVO(int numberticketNumber, int standby, String serviceName, String branchName, int standbyTime) {
		super();
		this.numberticketNumber = numberticketNumber;
		this.standby = standby;
		this.serviceName = serviceName;
		this.branchName = branchName;
		this.standbyTime = standbyTime;
	}
	public TicketVO() {
		super();
	}
	@Override
	public String toString() {
		return "TicketVO [numberticketNumber=" + numberticketNumber + ", standby=" + standby + ", serviceName="
				+ serviceName + ", branchName=" + branchName + ", standbyTime=" + standbyTime + "]";
	}
	
	
}
