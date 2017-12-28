package com.niu.bean;

import java.util.Date;

public class Order {
	private Integer id;// 主键
	private Integer userId;// 用户主键
	private String loginName;// 登录名
	private String userAddress;// 用户地址
	private Date createTime;// 创建时间
	private double costfloat;// 总消费
	private String serialNumber;// 订单号

	public Order(Integer id, Integer userId, String loginName,
			String userAddress, Date createTime, double costfloat,
			String serialNumber) {
		super();
		this.id = id;
		this.userId = userId;
		this.loginName = loginName;
		this.userAddress = userAddress;
		this.createTime = createTime;
		this.costfloat = costfloat;
		this.serialNumber = serialNumber;
	}

	public Order() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public double getCostfloat() {
		return costfloat;
	}

	public void setCostfloat(double costfloat) {
		this.costfloat = costfloat;
	}

	public String getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", userId=" + userId + ", loginName="
				+ loginName + ", userAddress=" + userAddress + ", createTime="
				+ createTime + ", costfloat=" + costfloat + ", serialNumber="
				+ serialNumber + "]";
	}
	
}
