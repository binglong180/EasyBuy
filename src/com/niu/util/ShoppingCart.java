package com.niu.util;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import com.niu.bean.Product;

public class ShoppingCart implements Serializable {
	private static List<ShoppingCartItem> productItems = new ArrayList<ShoppingCartItem>();// 购物车商品集合
	private static double sumPrice;// 购物车总价
	static ReturnResult result = new ReturnResult();// 返回結果

	public ShoppingCart(List<ShoppingCartItem> productItems, double sumPrice) {
		super();
		ShoppingCart.productItems = productItems;
		ShoppingCart.sumPrice = sumPrice;
	}

	public ShoppingCart() {
		super();
	}

	public List<ShoppingCartItem> getProductItems() {
		return productItems;
	}

	public void setProductItems(List<ShoppingCartItem> productItems) {
		ShoppingCart.productItems = productItems;
	}

	// 计算购物车所有商品的价格，使用BigDecimal进行价格的计算
	static BigDecimal sum = new BigDecimal("0");

	public double getSumPrice() {
		ShoppingCart.sumPrice = 0;
		for (ShoppingCartItem item : productItems) {
			double price = item.getProduct().getPrice();
			Integer quantity = item.getQuantity();
			ShoppingCart.sumPrice += quantity * price;
			/*
			 * BigDecimal price = new
			 * BigDecimal(Double.toString(item.getProduct() .getPrice()));
			 * BigDecimal quality = new BigDecimal(Double.toString(item
			 * .getQuantity())); BigDecimal multiply = price.multiply(quality);
			 * sum = sum.add(multiply);
			 */
		}
		return ShoppingCart.sumPrice;
	}

	public void setSumPrice(double sumPrice) {
		ShoppingCart.sumPrice = sumPrice;
	}

	// 添加商品到购物车
	public ReturnResult addItems(Product product, Integer quality) {
		boolean flag = false;// 不存在商品
		// 判断是否存在该商品
		for (int i = 0; i < productItems.size(); i++) {
			// 存在商品
			if (productItems.get(i).getProduct().getId()
					.equals(product.getId())) {
				flag = true;
				if (productItems.get(i).getProduct().getStock() < (productItems
						.get(i).getQuantity() + quality)) {
					result.returnFail("商品数量不足！");
				} else {
					productItems.get(i).setQuantity(
							(productItems.get(i).getQuantity() + quality));
					result.returnSuccess();
				}
			}
			if (quality > product.getStock()) {
				return result.returnFail("商品数量不足！");
			}
		}

		if (!flag) {
			productItems.add(new ShoppingCartItem(product, quality));
			result.returnSuccess();
		}
		return result;
	}

	// 从购物车删除商品
	public List<ShoppingCartItem> deleteItems(int index) {
		productItems.remove(index);
		return productItems;
	}

	// 从购物车商品数量
	public Integer modifyQuality(Integer index, Integer quality) {
		productItems.get(index).setQuantity(
				quality + productItems.get(index).getQuantity());
		return productItems.get(index).getQuantity();
	}

	public Integer findIndex(String productId) {
		for (int i = 0; i < productItems.size(); i++) {
			if (productItems.get(i).getProduct().getId()
					.equals(Integer.parseInt(productId))) {
				return i;
			}
		}
		return null;
	}
}
