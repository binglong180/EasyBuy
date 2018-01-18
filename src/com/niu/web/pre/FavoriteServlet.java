package com.niu.web.pre;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.Product;
import com.niu.service.product.ProductService;
import com.niu.service.product.ProductServiceImpl;
import com.niu.util.EmptyUtil;
import com.niu.util.Favorite;
import com.niu.util.ReturnResult;
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

	public ReturnResult setFavorite(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String productId = request.getParameter("productId");
		Product queryProductById = ps.queryProductById(productId);
		result = Favorite.setFavorite(queryProductById, request);
		List<Product> favoriteList = Favorite.getFavoriteList();
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
		List<Product> favoriteList = Favorite.getFavoriteList();
		request.setAttribute("favoriteList", favoriteList);
		return "/backend/frovite/frovite";
	}

	public void init() throws ServletException {
		ps = new ProductServiceImpl();
	}
}
