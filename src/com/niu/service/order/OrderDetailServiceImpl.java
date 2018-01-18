package com.niu.service.order;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.OrderDetail;
import com.niu.bean.Product;
import com.niu.dao.order.OrderDetailDao;
import com.niu.dao.order.OrderDetailDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.util.JDBCUtil;

public class OrderDetailServiceImpl extends BaseServiceImpl<OrderDetail>
		implements OrderDetailService {
	OrderDetailDao odd = null;

	@Override
	public Integer addOrderDetail(OrderDetail orderDetail) {
		try {
			conn = JDBCUtil.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

		}
		return null;
	}

	public OrderDetail getOrderDetail(String orderId) {
		OrderDetail orderDetail = null;
		try {
			conn = JDBCUtil.getConnection();
			odd = new OrderDetailDaoImpl(conn);
			orderDetail = odd.getOrderDetail(orderId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderDetail;
	}

	public List<Product> getDetailProduct() {

		return null;

	}
}
