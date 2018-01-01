package com.niu.web.pre;

import java.sql.SQLException;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.ProductCategory;
import com.niu.service.productCategory.ProductCategoryService;
import com.niu.service.productCategory.ProductCategoryServiceImpl;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/Home", loadOnStartup = 2)
public class HomeServlet extends AbstractServlet {
	private ProductCategoryService productCategoryService = null;

	public void init() throws ServletException {
		productCategoryService = new ProductCategoryServiceImpl();
	}

	public String index(HttpServletRequest request, HttpServletResponse response) {
		List<ProductCategory> productCategoryList = null;
		try {
			productCategoryList = productCategoryService.selectByParentId(0);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("productCategoryList",
				productCategoryList);
		return "pre/index";
	}

	@Override
	public Class getServletClass() {
		return HomeServlet.class;
	}

}