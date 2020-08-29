package kr.ac.kopo.numberTicket.vo;

public class NumberTicket_LatLngVO {

	private String branch_id;
	private String branch_group;
	private String branch_city;
	private String branch_district;
	private String branch_name;
	private String branch_address;
	private String branch_open;
	private String branch_close;
	private double branch_latitude;
	private double branch_longitude;
	
	public NumberTicket_LatLngVO() {
		super();
	}
	public NumberTicket_LatLngVO(String branch_id, String branch_group, String branch_city, String branch_district,
			String branch_name, String branch_address, String branch_open, String branch_close, double branch_latitude,
			double branch_longitude) {
		super();
		this.branch_id = branch_id;
		this.branch_group = branch_group;
		this.branch_city = branch_city;
		this.branch_district = branch_district;
		this.branch_name = branch_name;
		this.branch_address = branch_address;
		this.branch_open = branch_open;
		this.branch_close = branch_close;
		this.branch_latitude = branch_latitude;
		this.branch_longitude = branch_longitude;
	}
	public String getBranch_id() {
		return branch_id;
	}
	public void setBranch_id(String branch_id) {
		this.branch_id = branch_id;
	}
	public String getBranch_group() {
		return branch_group;
	}
	public void setBranch_group(String branch_group) {
		this.branch_group = branch_group;
	}
	public String getBranch_city() {
		return branch_city;
	}
	public void setBranch_city(String branch_city) {
		this.branch_city = branch_city;
	}
	public String getBranch_district() {
		return branch_district;
	}
	public void setBranch_district(String branch_district) {
		this.branch_district = branch_district;
	}
	public String getBranch_name() {
		return branch_name;
	}
	public void setBranch_name(String branch_name) {
		this.branch_name = branch_name;
	}
	public String getBranch_address() {
		return branch_address;
	}
	public void setBranch_address(String branch_address) {
		this.branch_address = branch_address;
	}
	public String getBranch_open() {
		return branch_open;
	}
	public void setBranch_open(String branch_open) {
		this.branch_open = branch_open;
	}
	public String getBranch_close() {
		return branch_close;
	}
	public void setBranch_close(String branch_close) {
		this.branch_close = branch_close;
	}
	public double getBranch_latitude() {
		return branch_latitude;
	}
	public void setBranch_latitude(double branch_latitude) {
		this.branch_latitude = branch_latitude;
	}
	public double getBranch_longitude() {
		return branch_longitude;
	}
	public void setBranch_longitude(double branch_longitude) {
		this.branch_longitude = branch_longitude;
	}
	@Override
	public String toString() {
		return "NumberTicket_LatLngVO [branch_id=" + branch_id + ", branch_group=" + branch_group + ", branch_city="
				+ branch_city + ", branch_district=" + branch_district + ", branch_name=" + branch_name
				+ ", branch_address=" + branch_address + ", branch_open=" + branch_open + ", branch_close="
				+ branch_close + ", branch_latitude=" + branch_latitude + ", branch_longitude=" + branch_longitude
				+ "]";
	}

	
}
