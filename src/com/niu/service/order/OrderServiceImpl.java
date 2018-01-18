package com.niu.service.order;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.niu.bean.Order;
import com.niu.bean.OrderDetail;
import com.niu.bean.Product;
import com.niu.bean.User;
import com.niu.bean.UserAddress;
import com.niu.dao.order.OrderDao;
import com.niu.dao.order.OrderDaoImpl;
import com.niu.dao.order.OrderDetailDao;
import com.niu.dao.order.OrderDetailDaoImpl;
import com.niu.dao.product.ProductDao;
import com.niu.dao.product.ProductDaoImpl;
import com.niu.dao.user.UserAddressDao;
import com.niu.dao.user.UserAddressDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.util.JDBCUtil;
import com.niu.util.ReturnResult;
import com.niu.util.SerialNumberUtil;
import com.niu.util.ShoppingCart;
import com.niu.util.ShoppingCartItem;

public class OrderServiceImpl extends BaseServiceImpl<Order> implements
		OrderService {
	private OrderDao od = null;
	private OrderDetailDao odd = null;
	private UserAddressDao uad = null;
	private ProductDao pd = null;

	@Override
	public Order saveOrder(User user, String addressId, ShoppingCart cart) {
		ReturnResult result = new ReturnResult();
		int id = -1;
		Order order = null;
		try {
			conn = JDBCUtil.getConnection();
			conn.setAutoCommit(false);
			od = new OrderDaoImpl(conn);
			odd = new OrderDetailDaoImpl(conn);
			uad = new UserAddressDaoImpl(conn);
			pd = new ProductDaoImpl(conn);
			UserAddress userAddress = uad.queryAddressById(addressId);// 通过id获得地址
			// 新增订单
			order = new Order();
			order.setCreateTime(new Date());
			order.setLoginName(user.getLoginName());
			order.setUserId(user.getId());
			order.setUserAddress(userAddress.getAddress());
			order.setSerialNumber(SerialNumberUtil.getSerialNumber());
			order.setCost(cart.getSumPrice());
			id = od.addOrder(order);
			if (id < 0) {
				result.returnFail("订单生成失败");
			}
			// 新增订单详情
			List<ShoppingCartItem> productItems = cart.getProductItems();
			OrderDetail orderDetail = null;
			for (ShoppingCartItem shoppingCartItem : productItems) {
				Product product = shoppingCartItem.getProduct();
				Integer productId = product.getId();
				Integer quantity = shoppingCartItem.getQuantity();
				orderDetail = new OrderDetail();
				orderDetail.setOrderId(id);
				orderDetail.setProductId(productId);
				orderDetail.setQuantity(quantity);
				orderDetail.setCost(shoppingCartItem.getCount());
				// 减库存
				Integer stock = 0;
				if (product.getStock() >= quantity) {
					stock = product.getStock() - quantity;
				} else {
					return null;
				}
				int addOrderDetail = odd.addOrderDetail(orderDetail);
				if (addOrderDetail < 0) {
					return null;
				}
				Integer updateStockByid = pd.updateStockByid(
						productId.toString(), stock);
				if (updateStockByid < 0) {
					return null;
				}
			}
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.rollback();
				conn.setAutoCommit(true);

			} catch (SQLException e) {
				e.printStackTrace();
			}
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return order;
	}

	@Override
	public List<Order> queryOrderById(String userId) {
		List<Order> queryOrderById = null;
		try {
			conn = JDBCUtil.getConnection();
			od = new OrderDaoImpl(conn);
			queryOrderById = od.queryOrderById(userId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return queryOrderById;
	}
}
