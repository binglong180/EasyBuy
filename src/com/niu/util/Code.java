package com.niu.util;

public class Code {
	private String code;
	private String mobile;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Code(String code, String mobile) {
		super();
		this.code = code;
		this.mobile = mobile;
	}
	public Code() {
		super();
	}
	
}
