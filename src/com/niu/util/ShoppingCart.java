package com.niu.util;

import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.niu.bean.Product;
import com.niu.bean.User;

public class ShoppingCart implements Serializable {
	private static List<ShoppingCartItem> productItems = new ArrayList<ShoppingCartItem>();// 购物车商品集合
	private double sumPrice;// 购物车总价
	static ReturnResult result = new ReturnResult();// 返回結果
	static ShoppingCart cart = null;

	public ShoppingCart(List<ShoppingCartItem> productItems, double sumPrice) {
		super();
		this.productItems = productItems;
		this.sumPrice = sumPrice;
	}

	public ShoppingCart() {
		super();
	}

	public List<ShoppingCartItem> getProductItems() {
		return productItems;
	}

	public void setProductItems(List<ShoppingCartItem> productItems) {
		this.productItems = productItems;
	}

	// 计算购物车所有商品的价格，使用BigDecimal进行价格的计算
	static BigDecimal sum = new BigDecimal("0");

	public double getSumPrice() {
		this.sumPrice = 0;
		for (ShoppingCartItem item : productItems) {
			double price = item.getProduct().getPrice();
			Integer quantity = item.getQuantity();
			item.setCount(quantity * price);
			this.sumPrice += quantity * price;
			/*
			 * BigDecimal price = new
			 * BigDecimal(Double.toString(item.getProduct() .getPrice()));
			 * BigDecimal quality = new BigDecimal(Double.toString(item
			 * .getQuantity())); BigDecimal multiply = price.multiply(quality);
			 * sum = sum.add(multiply);
			 */
		}
		return this.sumPrice;
	}

	public void setSumPrice(double sumPrice) {
		this.sumPrice = sumPrice;
	}

	// 购物车items 列表
	// start**************************************************************************************
	// 添加商品到购物车列表
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

	// 从购物车列表删除商品
	public List<ShoppingCartItem> deleteItems(int index) {
		productItems.remove(index);
		return productItems;
	}

	// 从购物车列表商品数量
	public Integer modifyQuality(int index, Integer quality) {
		productItems.get(index).setQuantity(quality);
		return productItems.get(index).getQuantity();
	}

	/**
	 * 
	 * 找到item中商品的下标！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-14
	 * 
	 * @param productId
	 * @return
	 */
	public Integer findIndex(String productId) {
		for (int i = 0; i < productItems.size(); i++) {
			if (productItems.get(i).getProduct().getId()
					.equals(Integer.parseInt(productId))) {
				return i;
			}
		}
		return null;
	}

	public static void clearItems() {
		productItems.clear();
	}

	// 购物车items 列表
	// end**************************************************************************************

	// cookie 购物车
	// start**************************************************************************************

	// 生成购物车
	public static void setCart(ShoppingCart cart, HttpServletResponse response,
			HttpServletRequest request) {
		// 未登录放到cookie中
		Cookie cookie = null;
		if (EmptyUtil.isEmpty(getLoginUser(request))) {
			String jsonString = JSON.toJSONString(cart);
			cookie = new Cookie(Constants.Cookie.COOKIE_CART, jsonString);
			cookie.setMaxAge(60 * 60 * 24 * 7);
			cookie.setPath("/");
			response.addCookie(cookie);
		} else {
			// 登录后放入memcached中
			RedisUtils.add(
					Constants.Memcached.MEMCACHED_CART
							+ getLoginUser(request).getId(),
					JSON.toJSONString(cart));
		}
	}

	// 未登录的cookie购物车
	public static ShoppingCart getCookieCart(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		String value = null;
		if (!EmptyUtil.isEmpty(cookies)) {
			for (Cookie cookie : cookies) {
				// 判断cookie中是否存在购物车
				if (cookie.getName().equals(Constants.Cookie.COOKIE_CART)) {
					value = cookie.getValue();
					// 从Cookie中获取购物车
					cart = JSON.parseObject(value, ShoppingCart.class);
					break;
				} else {
					// cookies没有购物车创建购物车对象
					cart = new ShoppingCart();
				}
			}

		}
		return cart;
	}

	public static void clearCartCookie(HttpServletResponse resp) {
		// 清空购物车cookie
		Cookie cookie = new Cookie(Constants.Cookie.COOKIE_CART, null);
		cookie.setMaxAge(0);
		cookie.setPath("/");
		resp.addCookie(cookie);
	}

	// cookie 购物车
	// end**************************************************************************************

	// redis 购物车
	// start**************************************************************************************

	/**
	 * 获得购物车
	 * 
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-16
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public static ShoppingCart getCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ShoppingCart cart = null;
		User user = getLoginUser(request);
		if (EmptyUtil.isEmpty(user)) {
			cart = getCookieCart(request);
		} else {
			cart = getRedisCart(request);
		}
		return cart;
	}

	/**
	 * 
	 * 获得Memcached中的购物车！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-16
	 * 
	 * @param request
	 * @return
	 */
	public static ShoppingCart getRedisCart(HttpServletRequest request) {
		ShoppingCart cart = null;
		if (!EmptyUtil.isEmpty(getLoginUser(request))) {
			String cartStr = RedisUtils.get(Constants.Memcached.MEMCACHED_CART
					+ getLoginUser(request).getId());
			cart = JSON.parseObject(cartStr, ShoppingCart.class);
			if (EmptyUtil.isEmpty(cart)) {
				cart = new ShoppingCart();
			}
		}
		return cart;
	}

	/**
	 * 
	 * 从cookie中的cart加入到redis中！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-16
	 * 
	 * @param req
	 * @param cookie
	 */
	public static void setRedisByCookie(HttpServletRequest req,
			HttpServletResponse resp) {
		List<ShoppingCartItem> productItems = new ArrayList<ShoppingCartItem>();
		ShoppingCart.clearItems();
		Cookie[] cookies = req.getCookies();
		ShoppingCart cart = new ShoppingCart();
		// cookie中有
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(Constants.Cookie.COOKIE_CART)) {
				String string = RedisUtils
						.get(Constants.Memcached.MEMCACHED_CART
								+ ShoppingCart.getLoginUser(req).getId());
				// 如果redis中没有
				if (EmptyUtil.isEmpty(string)) {
					cart = getCookieCart(req);
				} else {
					// 如果redis中有,redis和cookie中有 购物车合并
					ShoppingCart parseObject = JSON.parseObject(string,
							ShoppingCart.class);
					// redis中的购物车列表
					List<ShoppingCartItem> productItems2 = parseObject
							.getProductItems();
					ShoppingCart cookieCart = getCookieCart(req);
					// cookie中的购物车列表
					List<ShoppingCartItem> productItems3 = cookieCart
							.getProductItems();
					// 去除相同的商品
					for (int i = 0; i < productItems2.size(); i++) {
						Product product2 = productItems2.get(i).getProduct();
						int id2 = product2.getId();
						for (int j = 0; j < productItems3.size(); j++) {
							Product product3 = productItems3.get(j)
									.getProduct();
							int id3 = product3.getId();
							if (id2 == id3) {
								if ((productItems2.get(i).getQuantity() + productItems3
										.get(j).getQuantity()) < product2
										.getStock()) {
									productItems.add(new ShoppingCartItem(
											product2, productItems2.get(i)
													.getQuantity()
													+ productItems3.get(j)
															.getQuantity()));
									productItems2.remove(i);
									productItems3.remove(j);
								} else {
									productItems.add(new ShoppingCartItem(
											product2, product2.getStock()));
									productItems2.remove(i);
									productItems3.remove(j);
								}
								break;
							}
						}
					}
					productItems.addAll(productItems3);
					productItems.addAll(productItems2);
				}
				ShoppingCart.productItems = productItems;
				cart.setProductItems(productItems);
				cart.setSumPrice(cart.getSumPrice());
				RedisUtils.add(Constants.Memcached.MEMCACHED_CART
						+ ShoppingCart.getLoginUser(req).getId(),
						JSON.toJSONString(cart));
				clearCartCookie(resp);
				break;
			}

		}
	}

	// redis 购物车
	// end**************************************************************************************

	// 获得 登录用户
	public static User getLoginUser(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = null;
		user = (User) session.getAttribute("user");
		return user;
	}

}
