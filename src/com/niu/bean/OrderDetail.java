package com.niu.bean;

public class OrderDetail {

	private Integer id;// 主键
	private Integer orderId;// 订单主键
	private Integer productId;// 商品主键
	private Integer quantity;// 数量
	private Double cost;// 消费
	public OrderDetail(Integer id, Integer orderId, Integer productId,
			Integer quantity, Double cost) {
		super();
		this.id = id;
		this.orderId = orderId;
		this.productId = productId;
		this.quantity = quantity;
		this.cost = cost;
	}
	public OrderDetail() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Double getCost() {
		return cost;
	}
	public void setCost(Double cost) {
		this.cost = cost;
	}
	@Override
	public String toString() {
		return "OrderDetail [id=" + id + ", orderId=" + orderId
				+ ", productId=" + productId + ", quantity=" + quantity
				+ ", cost=" + cost + "]";
	}

}
