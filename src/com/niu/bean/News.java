package com.niu.bean;

import java.util.Date;

public class News {

	private Integer id;// 主键
	private String title;// 标题
	private String content;// 内容
	private Date createTime;// 创建时间
	private String img;//

	public News() {
		super();
	}

	public News(Integer id, String title, String content, Date createTime,
			String img) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.createTime = createTime;
		this.img = img;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", content=" + content
				+ ", createTime=" + createTime + ", img=" + img + "]";
	}

}
