package kr.ac.kopo.numberTicket.vo;

public class NumberTicket_ServiceVO {

	private String service_id;
	private String service_name;
	public NumberTicket_ServiceVO() {
		super();
	}
	public NumberTicket_ServiceVO(String service_id, String service_name) {
		super();
		this.service_id = service_id;
		this.service_name = service_name;
	}
	public String getService_id() {
		return service_id;
	}
	public void setService_id(String service_id) {
		this.service_id = service_id;
	}
	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	@Override
	public String toString() {
		return "NumberTicket_ServiceVO [service_id=" + service_id + ", service_name=" + service_name + "]";
	}
	
	
}
