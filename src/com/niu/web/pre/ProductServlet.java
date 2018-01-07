package com.niu.web.pre;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.Product;
import com.niu.bean.ProductCategory;
import com.niu.param.ProductParam;
import com.niu.service.product.ProductCategoryService;
import com.niu.service.product.ProductCategoryServiceImpl;
import com.niu.service.product.ProductService;
import com.niu.service.product.ProductServiceImpl;
import com.niu.util.EmptyUtil;
import com.niu.util.Pager;
import com.niu.util.ProductCategoryBox;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/Product")
public class ProductServlet extends AbstractServlet {
	ProductService ps = null;
	ProductCategoryService pcs=null;
	/**
	 * 初始化参数
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		ps = new ProductServiceImpl();
		pcs=new ProductCategoryServiceImpl();
	}

	/**
	 * Constructor of the object.
	 */
	public ProductServlet() {
		super();
	}

	/**
	 * 获得商品展示列表
	 * 
	 * @throws IOException
	 *             if an error occurred
	 */
	public String ProductList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		List<Product> productList = new ArrayList<Product>();
		List<ProductCategoryBox> productCategoryList=new ArrayList<ProductCategoryBox>();
		ProductParam param = new ProductParam();
		String keyWord = request.getParameter("keyWord");//搜索关键词
		String categoryIdStr = request.getParameter("categoryId");//分类Id
		String pageSizeStr = request.getParameter("pageSize");//页面容量
		String currentPageStr = request.getParameter("currentPage");
		// 分页信息
		Integer currentPage = EmptyUtil.isEmptys(currentPageStr) ? 1 : Integer
				.parseInt(currentPageStr);
		Integer pageSize = EmptyUtil.isEmptys(pageSizeStr) ? 6 : Integer
				.parseInt(pageSizeStr);
		Integer categoryId = EmptyUtil.isEmpty(categoryIdStr) ? 0: Integer
				.parseInt(categoryIdStr);
		Integer startIndex=((currentPage-1)*pageSize);
		param.openPage(startIndex, pageSize);
		param.setKeyword(keyWord);
		param.setCategoryId(categoryId);
		Integer total = ps.queryProductCount(param);
		// 分页
		
		Pager pager = new Pager(total, pageSize, startIndex);
		pager.setUrl("Product?action=ProductList&categoryId=" + categoryId);
		productList = ps.queryProductList(param);
		productCategoryList=pcs.getAllProductCategory();//分类信息
		request.setAttribute("pager", pager);
		request.setAttribute("keyWord", keyWord);
		request.setAttribute("productList", productList);
		request.setAttribute("categoryId", categoryId);
		request.setAttribute("total", total);
		request.setAttribute("productCategoryViewList", productCategoryList);
		return "/pre/product/ProductList";
	}

	@Override
	public Class<ProductServlet> getServletClass() {
		// 返回class
		return ProductServlet.class;
	}

}
