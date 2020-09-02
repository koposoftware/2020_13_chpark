package kr.ac.kopo.numberTicket.vo;

public class AdminTicketVO {
	private int numberticketNumber;
	private String serviceName;
	private String serviceId;
	private String tellerId;
	private String userName;
	private String numberticketDate;
	private int numberticketSeq;
	private String numberticketTime;
	public int getNumberticketNumber() {
		return numberticketNumber;
	}
	public String getServiceName() {
		return serviceName;
	}
	public String getServiceId() {
		return serviceId;
	}
	public String getTellerId() {
		return tellerId;
	}
	public String getUserName() {
		return userName;
	}
	public String getNumberticketDate() {
		return numberticketDate;
	}
	public int getNumberticketSeq() {
		return numberticketSeq;
	}
	public String getNumberticketTime() {
		return numberticketTime;
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
	public void setTellerId(String tellerId) {
		this.tellerId = tellerId;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setNumberticketDate(String numberticketDate) {
		this.numberticketDate = numberticketDate;
	}
	public void setNumberticketSeq(int numberticketSeq) {
		this.numberticketSeq = numberticketSeq;
	}
	public void setNumberticketTime(String numberticketTime) {
		this.numberticketTime = numberticketTime;
	}
	public AdminTicketVO(int numberticketNumber, String serviceName, String serviceId, String tellerId, String userName,
			String numberticketDate, int numberticketSeq, String numberticketTime) {
		super();
		this.numberticketNumber = numberticketNumber;
		this.serviceName = serviceName;
		this.serviceId = serviceId;
		this.tellerId = tellerId;
		this.userName = userName;
		this.numberticketDate = numberticketDate;
		this.numberticketSeq = numberticketSeq;
		this.numberticketTime = numberticketTime;
	}
	public AdminTicketVO() {
		super();
	}
	@Override
	public String toString() {
		return "AdminTicketVO [numberticketNumber=" + numberticketNumber + ", serviceName=" + serviceName
				+ ", serviceId=" + serviceId + ", tellerId=" + tellerId + ", userName=" + userName
				+ ", numberticketDate=" + numberticketDate + ", numberticketSeq=" + numberticketSeq
				+ ", numberticketTime=" + numberticketTime + "]";
	}
	
		
}
