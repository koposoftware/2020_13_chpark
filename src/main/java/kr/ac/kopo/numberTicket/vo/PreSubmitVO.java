package kr.ac.kopo.numberTicket.vo;

public class PreSubmitVO {
	private String userId;
	private String preSubmitBankName;
	private String preSubmitInputAccountNumber;
	private int preSubmitCashInput;
	private int preSubmitCheckInput;
	private String preSubmitMemo;
	private String serviceId;
	private String serviceName;
	private String branchName;
	private int numberticketNumber;
	
	public String getUserId() {
		return userId;
	}
	public String getPreSubmitBankName() {
		return preSubmitBankName;
	}
	public String getPreSubmitInputAccountNumber() {
		return preSubmitInputAccountNumber;
	}
	public int getPreSubmitCashInput() {
		return preSubmitCashInput;
	}
	public int getPreSubmitCheckInput() {
		return preSubmitCheckInput;
	}
	public String getPreSubmitMemo() {
		return preSubmitMemo;
	}
	public String getServiceId() {
		return serviceId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setPreSubmitBankName(String preSubmitBankName) {
		this.preSubmitBankName = preSubmitBankName;
	}
	public void setPreSubmitInputAccountNumber(String preSubmitInputAccountNumber) {
		this.preSubmitInputAccountNumber = preSubmitInputAccountNumber;
	}
	public void setPreSubmitCashInput(int preSubmitCashInput) {
		this.preSubmitCashInput = preSubmitCashInput;
	}
	public void setPreSubmitCheckInput(int preSubmitCheckInput) {
		this.preSubmitCheckInput = preSubmitCheckInput;
	}
	public void setPreSubmitMemo(String preSubmitMemo) {
		this.preSubmitMemo = preSubmitMemo;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public int getNumberticketNumber() {
		return numberticketNumber;
	}
	public void setNumberticketNumber(int numberticketNumber) {
		this.numberticketNumber = numberticketNumber;
	}
	@Override
	public String toString() {
		return "PreSubmitVO [userId=" + userId + ", preSubmitBankName=" + preSubmitBankName
				+ ", preSubmitInputAccountNumber=" + preSubmitInputAccountNumber + ", preSubmitCashInput="
				+ preSubmitCashInput + ", preSubmitCheckInput=" + preSubmitCheckInput + ", preSubmitMemo="
				+ preSubmitMemo + ", serviceId=" + serviceId + ", serviceName=" + serviceName + ", branchName="
				+ branchName + ", numberticketNumber=" + numberticketNumber + "]";
	}
	public PreSubmitVO(String userId, String preSubmitBankName, String preSubmitInputAccountNumber,
			int preSubmitCashInput, int preSubmitCheckInput, String preSubmitMemo, String serviceId, String serviceName,
			String branchName, int numberticketNumber) {
		super();
		this.userId = userId;
		this.preSubmitBankName = preSubmitBankName;
		this.preSubmitInputAccountNumber = preSubmitInputAccountNumber;
		this.preSubmitCashInput = preSubmitCashInput;
		this.preSubmitCheckInput = preSubmitCheckInput;
		this.preSubmitMemo = preSubmitMemo;
		this.serviceId = serviceId;
		this.serviceName = serviceName;
		this.branchName = branchName;
		this.numberticketNumber = numberticketNumber;
	}
	public PreSubmitVO() {
		super();
	}
	
	
}
