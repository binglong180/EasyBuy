package com.niu.web.pre;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.Product;
import com.niu.service.product.ProductCategoryService;
import com.niu.service.product.ProductCategoryServiceImpl;
import com.niu.service.product.ProductService;
import com.niu.service.product.ProductServiceImpl;
import com.niu.util.Constants;
import com.niu.util.EmptyUtil;
import com.niu.util.ProductCategoryBox;
import com.niu.util.ReturnResult;
import com.niu.util.ShoppingCart;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/Cart")
public class CartServlet extends AbstractServlet {
	List<ProductCategoryBox> productCategoryList = new ArrayList<ProductCategoryBox>();
	ProductService<Product> ps = null;
	static ShoppingCart cart = null;
	ProductCategoryService pcs = null;

	/**
	 * Constructor of the object.
	 */
	public CartServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * 
	 * 添加购物车！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-8
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public ReturnResult addCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ReturnResult result = new ReturnResult();
		String productId = request.getParameter("productId");
		String quantityStr = request.getParameter("quantity");
		Integer quantity = 1;
		if (!EmptyUtil.isEmpty(quantityStr)) {
			quantity = Integer.parseInt(quantityStr);
		}
		Product product = ps.queryProductById(productId);
		if (quantity > product.getStock().intValue()) {
			return result.returnFail("数量不足，请重新输入！");
		}
		ShoppingCart cart = ShoppingCart.getCart(request, response);
		result = cart.addItems(product, quantity);
		cart.setProductItems(cart.getProductItems());
		if (result.getStatus() == Constants.ReturnResult.SUCCESS) {
			cart.setSumPrice(EmptyUtil.isEmpty(cart.getSumPrice()) ? 0.0 : cart
					.getSumPrice());
			ShoppingCart.setCart(cart, response, request);
		}
		return result;
	}

	/**
	 * 
	 * 刷新搜索栏购物车！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-8
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String refreshCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ShoppingCart cart = ShoppingCart.getCart(request, response);
		request.setAttribute("cart", cart);
		return "/common/pre/search";
	}

	/**
	 * 
	 * 刷新列表购物车！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-8
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String refreshCartTable(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ShoppingCart cart = ShoppingCart.getCart(request, response);
		System.out.println(cart.getProductItems());
		request.setAttribute("cart", cart);
		return "/pre/cart/cartShow";
	}

	/**
	 * 
	 * 从购物车删除！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-8
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public void deleteCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String productId = request.getParameter("productId");
		ShoppingCart cart = ShoppingCart.getCart(request, response);
		if (!EmptyUtil.isEmpty(productId)) {
			int index = cart.findIndex(productId);
			cart.deleteItems(index);
			cart.setProductItems(cart.getProductItems());
			cart.setSumPrice(cart.getSumPrice());
			ShoppingCart.setCart(cart, response, request);
		}
	}

	/**
	 * 
	 * 进入购物车！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-10
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String toCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		productCategoryList = pcs.getAllProductCategory();
		cart = ShoppingCart.getCart(request, response);
		request.setAttribute("productCategoryViewList", productCategoryList);
		request.setAttribute("cart", cart);
		return "/pre/cart/cart";
	}

	public ReturnResult modifyCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ReturnResult result = new ReturnResult();
		String productId = request.getParameter("productId");
		String quantityStr = request.getParameter("quantity");
		Integer quantity = 1;
		result.returnSuccess();
		if (!EmptyUtil.isEmpty(quantityStr)) {
			quantity = Integer.parseInt(quantityStr);
		} else {
			return result.returnFail("数量小于1件");
		}
		Product product = ps.queryProductById(productId);
		if (quantity > product.getStock()) {
			return result.returnFail("数量不足，请重新购买！");
		}
		ShoppingCart cart = ShoppingCart.getCart(request, response);
		cart.modifyQuality(cart.findIndex(productId), quantity);
		cart.setProductItems(cart.getProductItems());
		cart.setSumPrice(cart.getSumPrice());
		ShoppingCart.setCart(cart, response, request);
		return result;
	}

	// 清空购物车
	public void emptyCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ShoppingCart cart = ShoppingCart.getCart(request, response);
		cart.getProductItems().clear();
		cart.setSumPrice(cart.getSumPrice());
		request.setAttribute("cart", cart);
	}

	public String toCheckOut(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		productCategoryList = pcs.getAllProductCategory();
		cart = ShoppingCart.getCart(request, response);
		request.setAttribute("productCategoryViewList", productCategoryList);
		request.setAttribute("cart", cart);
		return "/pre/cart/toCheckOut";
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		ps = new ProductServiceImpl();
		cart = new ShoppingCart();
		pcs = new ProductCategoryServiceImpl();
	}

	@Override
	public Class getServletClass() {
		return CartServlet.class;
	}

}
