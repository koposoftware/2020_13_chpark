package kr.ac.kopo.numberTicket.vo;

public class ServiceDescVO {
	private String serviceId;
	private String serviceName;
	private int seq;
	private String name;
	private String etc;
	@Override
	public String toString() {
		return "ServiceDescVO [serviceId=" + serviceId + ", serviceName=" + serviceName + ", seq=" + seq + ", name="
				+ name + ", etc=" + etc + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	public String getServiceId() {
		return serviceId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public int getSeq() {
		return seq;
	}
	public String getName() {
		return name;
	}
	public String getEtc() {
		return etc;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public ServiceDescVO(String serviceId, String serviceName, int seq, String name, String etc) {
		super();
		this.serviceId = serviceId;
		this.serviceName = serviceName;
		this.seq = seq;
		this.name = name;
		this.etc = etc;
	}
	public ServiceDescVO() {
		super();
	}

	
	
}
