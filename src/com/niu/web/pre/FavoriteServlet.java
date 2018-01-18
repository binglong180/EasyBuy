package com.niu.web.pre;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.Product;
import com.niu.bean.User;
import com.niu.service.product.ProductService;
import com.niu.service.product.ProductServiceImpl;
import com.niu.util.EmptyUtil;
import com.niu.util.Favorite;
import com.niu.util.ReturnResult;
import com.niu.util.ShoppingCart;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/Favorite")
public class FavoriteServlet extends AbstractServlet {
	ProductService<Product> ps = null;
	ReturnResult result = new ReturnResult();

	@Override
	public Class getServletClass() {
		// TODO Auto-generated method stub
		return FavoriteServlet.class;
	}

	public Object setFavorite(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		User loginUser = ShoppingCart.getLoginUser(request);
		if (EmptyUtil.isEmpty(loginUser)) {
			return "/pre/login";
		}
		String productId = request.getParameter("productId");
		Product queryProductById = ps.queryProductById(productId);
		result = Favorite.setFavorite(queryProductById, request);
		List<Product> favoriteList = Favorite.getFavorite(request);
		request.setAttribute("favoriteList", favoriteList);
		String favoriteSize = "0";
		if (!EmptyUtil.isEmpty(favoriteList)) {
			favoriteSize = String.valueOf(favoriteList.size());
		}
		request.getSession().setAttribute("favoriteSize", favoriteSize);
		return result;
	}

	public String getFavorite(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User loginUser = ShoppingCart.getLoginUser(request);
		if (EmptyUtil.isEmpty(loginUser)) {
			return "/pre/login";
		}
		List<Product> favoriteList = Favorite.getFavorite(request);
		request.setAttribute("favoriteList", favoriteList);
		return "/backend/frovite/frovite";
	}

	public void init() throws ServletException {
		ps = new ProductServiceImpl();
	}
}
