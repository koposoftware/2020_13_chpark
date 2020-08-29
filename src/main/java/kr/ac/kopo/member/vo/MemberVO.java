package kr.ac.kopo.member.vo;

public class MemberVO {
	
	private String id;
	private String pwd;
	private String name;
	private String ssn;
	private String sex;
	private String phone;
	private String birth;
	private String address;
	private String type;
	private String reg_date;
	private String kakaoTokenId;
	
	public MemberVO() {
	
	}

	public MemberVO(String id, String pwd, String name, String ssn, String sex, String phone, String birth,
			String address, String type, String reg_date, String kakaoTokenId) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.ssn = ssn;
		this.sex = sex;
		this.phone = phone;
		this.birth = birth;
		this.address = address;
		this.type = type;
		this.reg_date = reg_date;
		this.kakaoTokenId = kakaoTokenId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getKakaoTokenId() {
		return kakaoTokenId;
	}

	public void setKakaoTokenId(String kakaoTokenId) {
		this.kakaoTokenId = kakaoTokenId;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", ssn=" + ssn + ", sex=" + sex + ", phone="
				+ phone + ", birth=" + birth + ", address=" + address + ", type=" + type + ", reg_date=" + reg_date
				+ ", kakaoTokenId=" + kakaoTokenId + "]";
	}
	
	
	
	
}
