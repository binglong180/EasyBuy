package com.niu.util;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.niu.bean.Product;

public class Favorite {
	static List<Product> favoriteList = new ArrayList<Product>();

	public static ReturnResult setFavorite(Product product,
			HttpServletRequest request) {
		favoriteList = getFavorite(request);
		ReturnResult result = new ReturnResult();
		if (EmptyUtil.isEmpty(ShoppingCart.getLoginUser(request))) {
		} else {
			for (Product product1 : favoriteList) {
				int i = product1.getId();
				int j = product.getId();
				if (i - j == 0) {
					return result.returnFail("已收藏过该商品！");
				}
			}
			favoriteList.add(product);
			MemcachedUtils.add(Constants.Memcached.FAVORITE
					+ ShoppingCart.getLoginUser(request).getId(), favoriteList);
		}
		return result.returnSuccess("收藏成功");
	}

	@SuppressWarnings("unchecked")
	public static List<Product> getFavorite(HttpServletRequest request) {
		favoriteList = (List<Product>) MemcachedUtils
				.get(Constants.Memcached.FAVORITE
						+ ShoppingCart.getLoginUser(request).getId());
		return favoriteList;
	}

	public static List<Product> getFavoriteList() {
		return favoriteList;
	}

	public static void setFavoriteList(List<Product> favoriteList) {
		Favorite.favoriteList = favoriteList;
	}

	@Override
	public String toString() {
		return "Favorite [getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

}
