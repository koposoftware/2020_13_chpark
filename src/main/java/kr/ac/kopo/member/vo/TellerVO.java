package kr.ac.kopo.member.vo;

public class TellerVO {

	private String tellerId;
	private String tellerPwd;
	private String tellerName;
	private String branchId;
	private String type;
	private String branchName;
	private String id;
	
	public TellerVO(String tellerId, String tellerPwd, String tellerName, String branchId, String type,
			String branchName) {
		super();
		this.tellerId = tellerId;
		this.tellerPwd = tellerPwd;
		this.tellerName = tellerName;
		this.branchId = branchId;
		this.type = type;
		this.branchName = branchName;
	}
	public TellerVO() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public String getBranchName() {
		return branchName;
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
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	@Override
	public String toString() {
		return "TellerVO [tellerId=" + tellerId + ", tellerPwd=" + tellerPwd + ", tellerName=" + tellerName
				+ ", branchId=" + branchId + ", type=" + type + ", branchName=" + branchName + "]";
	}

			
	
}
