package com.niu.web.pre;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.niu.bean.Order;
import com.niu.bean.User;
import com.niu.bean.UserAddress;
import com.niu.service.order.OrderService;
import com.niu.service.order.OrderServiceImpl;
import com.niu.service.user.UserAddressService;
import com.niu.service.user.UserAddressServiceImpl;
import com.niu.util.Constants;
import com.niu.util.EmptyUtil;
import com.niu.util.RedisUtils;
import com.niu.util.ReturnResult;
import com.niu.util.ShoppingCart;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/Order")
public class OrderServlet extends AbstractServlet {
	private UserAddressService uas = null;
	private OrderService os = null;

	/**
	 * 
	 * 刷新确认订单页面！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String toSettle(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = ShoppingCart.getLoginUser(request);
		if (EmptyUtil.isEmpty(user)) {
			return "/pre/login";
		}
		ShoppingCart cart = ShoppingCart.getCart(request, response);
		Integer userId = user.getId();
		List<UserAddress> addressList = uas.queryAddressByUserId(userId
				.toString());
		request.setAttribute("addressList", addressList);
		request.setAttribute("cart", cart);
		return "/pre/order/toSettle";
	}

	/**
	 * 
	 * 新增地址！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public Object addAddress(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ReturnResult result = new ReturnResult();
		User user = ShoppingCart.getLoginUser(request);
		if (EmptyUtil.isEmpty(user)) {
			return "/pre/login";
		}
		UserAddress userAddress = new UserAddress();
		Integer userId = user.getId();
		userAddress.setCreateTime(new Date());
		String newAddress = request.getParameter("newAddress");
		if (EmptyUtil.isEmpty(newAddress)) {
			return result.returnFail("地址不能为空！");
		}
		String newRemark = request.getParameter("newRemark");
		if (EmptyUtil.isEmpty(newRemark)) {
			newRemark = "新地址";
		}
		userAddress.setAddress(newAddress);
		userAddress.setRemark(newRemark);
		userAddress.setUserId(userId);
		Integer addAddressByUserId = uas.addAddressByUserId(userAddress);
		if (addAddressByUserId <= 0) {
			return result.returnFail("新增地址失败！");
		} else {
			result.returnSuccess();
		}
		return result;
	}

	/**
	 * 
	 * 生成订单！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public Object addOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		if (EmptyUtil.isEmpty(ShoppingCart.getLoginUser(request))) {
			return "/pre/login";
		}
		ReturnResult result = new ReturnResult();
		os = new OrderServiceImpl();
		String addressId = request.getParameter("addressId");
		if (EmptyUtil.isEmpty(addressId)) {
			return result.returnFail("地址不能为空！");
		}
		User user = ShoppingCart.getLoginUser(request);
		ShoppingCart cart = ShoppingCart.getCart(request, response);
		Order order = os.saveOrder(user, addressId, cart);
		if (EmptyUtil.isEmpty(order)) {
			result.returnFail("订单提交失败,请重新提交！");
		} else {
			ShoppingCart.clearItems();
			cart = new ShoppingCart();
			RedisUtils.add(Constants.Memcached.MEMCACHED_CART
					+ ShoppingCart.getLoginUser(request).getId(),
					JSON.toJSONString(cart));
			request.setAttribute("order", order);
		}
		return "/pre/order/toCheckOut";
	}

	public void init() throws ServletException {
		uas = new UserAddressServiceImpl();
	}

	@Override
	public Class getServletClass() {
		return OrderServlet.class;
	}

}
