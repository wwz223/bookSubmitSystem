package cn.lfsfxy.library.entity;

public class User {
	private String tName;
	private String loginName;
	private String password;
	private String sex;
	private String phoneNumber;
	private String backImg;
	private String intro;



	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getBackImg() {
		return backImg;
	}

	public void setBackImg(String backImg) {
		this.backImg = backImg;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public User() {
		super();
		// TODO 自动生成的构造函数存根
	}

	public User(String tName, String loginName, String password, String sex, String phoneNumber, String backImg,
			String intro) {
		super();
		this.tName = tName;
		this.loginName = loginName;
		this.password = password;
		this.sex = sex;
		this.phoneNumber = phoneNumber;
		this.backImg = backImg;
		this.intro = intro;
	}


}
