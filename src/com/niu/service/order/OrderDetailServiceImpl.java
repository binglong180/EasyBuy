package com.niu.service.order;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.niu.bean.OrderDetail;
import com.niu.bean.Product;
import com.niu.dao.order.OrderDetailDao;
import com.niu.dao.order.OrderDetailDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.service.product.ProductService;
import com.niu.service.product.ProductServiceImpl;
import com.niu.util.DetailUtil;
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

	public List<OrderDetail> getOrderDetail(String orderId) {
		List<OrderDetail> orderDetail = null;
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

	public List<Object> getDetailList(String orderId) {
		List<Object> list = new ArrayList<Object>();
		ProductService<Product> ps = new ProductServiceImpl();
		List<OrderDetail> orderDetailList = getOrderDetail(orderId);
		for (OrderDetail orderDetail : orderDetailList) {
			DetailUtil detail = new DetailUtil();
			Integer productId = orderDetail.getProductId();
			Product product = ps.queryProductById(productId.toString());
			detail.setName(product.getName());
			detail.setFile(product.getFileName());
			detail.setCost(String.valueOf(orderDetail.getCost()));
			detail.setQuantity(orderDetail.getQuantity().toString());
			list.add(detail);
		}
		return list;
	}
}
