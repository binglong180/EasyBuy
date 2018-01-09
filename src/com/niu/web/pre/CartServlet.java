package com.niu.web.pre;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niu.bean.Product;
import com.niu.service.product.ProductService;
import com.niu.service.product.ProductServiceImpl;
import com.niu.util.Constants;
import com.niu.util.EmptyUtil;
import com.niu.util.ReturnResult;
import com.niu.util.ShoppingCart;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/Cart")
public class CartServlet extends AbstractServlet {
	ProductService<Product> ps = null;
	ShoppingCart cart = null;

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
		if (quantity > product.getStock()) {
			return result.returnFail("数量不足，请重新输入！");
		}
		HttpSession session = request.getSession();
		ShoppingCart cart = getCartBySession(session);
		result = cart.addItems(product, quantity);
		cart.setProductItems(cart.getProductItems());
		if (result.getStatus() == Constants.ReturnResult.SUCCESS) {
			cart.setSumPrice(EmptyUtil.isEmpty(cart.getSumPrice()) ? 0.0 : cart
					.getSumPrice());
		}
		return result;
	}

	/**
	 * 
	 * 刷新购物车！
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
		HttpSession session = request.getSession();
		ShoppingCart cart = getCartBySession(session);
		session.setAttribute("cart", cart);
		return "/common/pre/search";
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
	public String deleteCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String productId = request.getParameter("productId");
		cart = (ShoppingCart) session.getAttribute("cart");
		int index = cart.findIndex(productId);
		cart.deleteItems(index);
		session.setAttribute("cart", cart);

		return "/common/pre/search";
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
	}

	@Override
	public Class getServletClass() {
		// TODO Auto-generated method stub
		return CartServlet.class;
	}

	// 从session中获得Cart
	public ShoppingCart getCartBySession(HttpSession session) {
		ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
		if (EmptyUtil.isEmpty(cart)) {
			cart = new ShoppingCart();
			session.setAttribute("cart", cart);
		}
		return cart;
	}
}
