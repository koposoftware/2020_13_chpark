package kr.ac.kopo.numberTicket.vo;

public class NumberTicket_TellerVO {

	private String teller_id;
	private String teller_pwd;
	private String teller_name;
	private String branch_id;
	public NumberTicket_TellerVO() {
		super();
	}
	public NumberTicket_TellerVO(String teller_id, String teller_pwd, String teller_name, String branch_id) {
		super();
		this.teller_id = teller_id;
		this.teller_pwd = teller_pwd;
		this.teller_name = teller_name;
		this.branch_id = branch_id;
	}
	public String getTeller_id() {
		return teller_id;
	}
	public void setTeller_id(String teller_id) {
		this.teller_id = teller_id;
	}
	public String getTeller_pwd() {
		return teller_pwd;
	}
	public void setTeller_pwd(String teller_pwd) {
		this.teller_pwd = teller_pwd;
	}
	public String getTeller_name() {
		return teller_name;
	}
	public void setTeller_name(String teller_name) {
		this.teller_name = teller_name;
	}
	public String getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(String branch_id) {
		this.branch_id = branch_id;
	}
	@Override
	public String toString() {
		return "NumberTicket_TellerVO [teller_id=" + teller_id + ", teller_pwd=" + teller_pwd + ", teller_name="
				+ teller_name + ", branch_id=" + branch_id + "]";
	}
	
	
}
