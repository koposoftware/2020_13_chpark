package kr.ac.kopo.member.vo;

public class TellerVO {

	private String tellerId;
	private String tellerPwd;
	private String tellerName;
	private String branchId;
	private String type;
	public String getTellerId() {
		return tellerId;
	}
	public String getTellerPwd() {
		return tellerPwd;
	}
	public String getTellerName() {
		return tellerName;
	}
	public String getBranchId() {
		return branchId;
	}
	public String getType() {
		return type;
	}
	public void setTellerId(String tellerId) {
		this.tellerId = tellerId;
	}
	public void setTellerPwd(String tellerPwd) {
		this.tellerPwd = tellerPwd;
	}
	public void setTellerName(String tellerName) {
		this.tellerName = tellerName;
	}
	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}
	public void setType(String type) {
		this.type = type;
	}
	public TellerVO(String tellerId, String tellerPwd, String tellerName, String branchId, String type) {
		super();
		this.tellerId = tellerId;
		this.tellerPwd = tellerPwd;
		this.tellerName = tellerName;
		this.branchId = branchId;
		this.type = type;
	}
	public TellerVO() {
		super();
	}
	@Override
	public String toString() {
		return "TellerVO [tellerId=" + tellerId + ", tellerPwd=" + tellerPwd + ", tellerName=" + tellerName
				+ ", branchId=" + branchId + ", type=" + type + "]";
	}
	
	

			
	
}
