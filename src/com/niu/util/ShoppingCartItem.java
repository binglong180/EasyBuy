package com.niu.util;

import java.io.Serializable;

import com.niu.bean.Product;

/**
 * 
 * 购物车实体类！存放单个商品的信息
 * 
 * @author 牛牛牛！！！牛牛！！牛！
 * 
 * @date 2018-1-8
 * 
 * @version
 * 
 */
public class ShoppingCartItem implements Serializable {
	private Product product;// 商品
	private Integer quantity;// 数量
	private double count;// 单品总金额

	public ShoppingCartItem(Product product, Integer quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.count = product.getPrice() * quantity;
	}

	public ShoppingCartItem() {
		super();
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public double getCount() {
		return count;
	}

	public void setCount(double count) {
		this.count = count;
	}

}
