package cn.lfsfxy.library.entity;

import java.util.Date;

public class Book {
	private String bId;
	private String bName;
	private String author;
	private String pubComp;
	private Date pubDate;
	private int bCount;
	private float price;
	private String type;
	private String img;
	private String intro;

	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPubComp() {
		return pubComp;
	}

	public void setPubComp(String pubComp) {
		this.pubComp = pubComp;
	}

	public Date getPubDate() {
//		return pubDate;
		return new java.util.Date(pubDate.getTime());
	}

	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
}
