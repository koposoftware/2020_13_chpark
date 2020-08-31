package kr.ac.kopo.numberTicket.vo;

public class NumberTicket_NumberTicketVO {

	private int numberticket_seq;
	private int numberticket_number;
	private String numberticket_date;
	private String numberticket_time;
	private String users_id;
	private String users_name;
	private String branch_id;
	private String teller_id;
	private String service_id;
	private String brach_name;
	private int standby;
	
	public NumberTicket_NumberTicketVO() {
		super();
	}

	public NumberTicket_NumberTicketVO(int numberticket_seq, int numberticket_number, String numberticket_date,
			String numberticket_time, String users_id, String users_name, String branch_id, String teller_id,
			String service_id, String brach_name, int standby) {
		super();
		this.numberticket_seq = numberticket_seq;
		this.numberticket_number = numberticket_number;
		this.numberticket_date = numberticket_date;
		this.numberticket_time = numberticket_time;
		this.users_id = users_id;
		this.users_name = users_name;
		this.branch_id = branch_id;
		this.teller_id = teller_id;
		this.service_id = service_id;
		this.brach_name = brach_name;
		this.standby = standby;
	}

	public int getNumberticket_seq() {
		return numberticket_seq;
	}

	public int getNumberticket_number() {
		return numberticket_number;
	}

	public String getNumberticket_date() {
		return numberticket_date;
	}

	public String getNumberticket_time() {
		return numberticket_time;
	}

	public String getUsers_id() {
		return users_id;
	}

	public String getUsers_name() {
		return users_name;
	}

	public String getBranch_id() {
		return branch_id;
	}

	public String getTeller_id() {
		return teller_id;
	}

	public String getService_id() {
		return service_id;
	}

	public String getBrach_name() {
		return brach_name;
	}

	public int getStandby() {
		return standby;
	}

	public void setNumberticket_seq(int numberticket_seq) {
		this.numberticket_seq = numberticket_seq;
	}

	public void setNumberticket_number(int numberticket_number) {
		this.numberticket_number = numberticket_number;
	}

	public void setNumberticket_date(String numberticket_date) {
		this.numberticket_date = numberticket_date;
	}

	public void setNumberticket_time(String numberticket_time) {
		this.numberticket_time = numberticket_time;
	}

	public void setUsers_id(String users_id) {
		this.users_id = users_id;
	}

	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}

	public void setBranch_id(String branch_id) {
		this.branch_id = branch_id;
	}

	public void setTeller_id(String teller_id) {
		this.teller_id = teller_id;
	}

	public void setService_id(String service_id) {
		this.service_id = service_id;
	}

	public void setBrach_name(String brach_name) {
		this.brach_name = brach_name;
	}

	public void setStandby(int standby) {
		this.standby = standby;
	}

	@Override
	public String toString() {
		return "NumberTicket_NumberTicketVO [numberticket_seq=" + numberticket_seq + ", numberticket_number="
				+ numberticket_number + ", numberticket_date=" + numberticket_date + ", numberticket_time="
				+ numberticket_time + ", users_id=" + users_id + ", users_name=" + users_name + ", branch_id="
				+ branch_id + ", teller_id=" + teller_id + ", service_id=" + service_id + ", brach_name=" + brach_name
				+ ", standby=" + standby + "]";
	}

	
		
}
