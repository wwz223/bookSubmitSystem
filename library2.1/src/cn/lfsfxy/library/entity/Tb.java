package cn.lfsfxy.library.entity;

public class Tb {
	private int tbid;
	private String bid;
	private String bName;
	private String loginName;
	private int bCount;
	public Tb(int tbid, String bid,String bName, String loginName, int bCount) {
		super();
		this.tbid = tbid;
		this.bid = bid;
		this.bName = bName;
		this.loginName = loginName;
		this.bCount = bCount;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public Tb() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public int getTbid() {
		return tbid;
	}
	public void setTbid(int tbid) {
		this.tbid = tbid;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public int getbCount() {
		return bCount;
	}
	public void setbCount(int bCount) {
		this.bCount = bCount;
	}
	
}
