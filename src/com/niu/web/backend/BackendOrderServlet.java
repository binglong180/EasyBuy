package com.niu.web.backend;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niu.bean.Order;
import com.niu.bean.OrderDetail;
import com.niu.bean.User;
import com.niu.service.order.OrderDetailService;
import com.niu.service.order.OrderDetailServiceImpl;
import com.niu.service.order.OrderService;
import com.niu.service.order.OrderServiceImpl;
import com.niu.util.ShoppingCart;
import com.niu.web.AbstractServlet;

@WebServlet(value = "/BackendOrderServlet")
public class BackendOrderServlet extends AbstractServlet {
	OrderService os = null;
	OrderDetailService ods = null;

	@Override
	public Class getServletClass() {
		// TODO Auto-generated method stub
		return BackendOrderServlet.class;
	}

	public String getOrder(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		User user = ShoppingCart.getLoginUser(request);
		String userId = user.getId().toString();
		List<Order> orderList = os.queryOrderById(userId);
		request.setAttribute("orderList", orderList);
		return "/backend/order";
	}

	public String getOrderDetail(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String orderId = request.getParameter("orderId");
		OrderDetail orderDetail = ods.getOrderDetail(orderId);
		request.setAttribute("orderDetail", orderDetail);
		return "/backend/order/orderDetail";
	}

	public void init() throws ServletException {
		os = new OrderServiceImpl();
		ods = new OrderDetailServiceImpl();
	}

}
