package com.niu.service.order;

import java.util.List;

import com.niu.bean.Order;
import com.niu.bean.User;
import com.niu.service.BaseService;
import com.niu.util.ShoppingCart;

public interface OrderService extends BaseService<Order> {
	Order saveOrder(User user, String addressId, ShoppingCart cart);

	List<Order> queryOrderById(String userId);

	Order queryOrder(String id);

	List<Order> queryAllOrder();
}
