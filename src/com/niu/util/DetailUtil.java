package com.niu.util;

public class DetailUtil {
	private String name;
	private String quantity;
	private String file;
	private String cost;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getCost() {
		return cost;
	}

	public void setCost(String cost) {
		this.cost = cost;
	}

	public DetailUtil(String name, String quantity, String file, String cost) {
		super();
		this.name = name;
		this.quantity = quantity;
		this.file = file;
		this.cost = cost;
	}

	public DetailUtil() {
		super();
	}

	@Override
	public String toString() {
		return "DetailUtil [name=" + name + ", quantity=" + quantity
				+ ", file=" + file + ", cost=" + cost + "]";
	}

}
