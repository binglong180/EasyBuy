package com.niu.web.pre;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.ProductCategory;
import com.niu.service.product.ProductCategoryService;
import com.niu.service.product.ProductCategoryServiceImpl;
import com.niu.util.ProductCategoryBox;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/Home", loadOnStartup = 2)
public class HomeServlet extends AbstractServlet {
	private ProductCategoryService productCategoryService = null;

	public void init() throws ServletException {
		productCategoryService = new ProductCategoryServiceImpl();
	}
	public String index(HttpServletRequest request, HttpServletResponse response) {
		List<ProductCategoryBox> productCategoryViewList = null;
		productCategoryViewList = productCategoryService.getAllProductCategory();
		request.setAttribute("productCategoryViewList", productCategoryViewList);
		return "pre/index";
	}

	@Override
	public Class getServletClass() {
		return HomeServlet.class;
	}

}
