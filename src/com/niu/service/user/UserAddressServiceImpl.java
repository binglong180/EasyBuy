package com.niu.service.user;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.niu.bean.UserAddress;
import com.niu.dao.user.UserAddressDao;
import com.niu.dao.user.UserAddressDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.util.JDBCUtil;

public class UserAddressServiceImpl extends BaseServiceImpl<UserAddress>
		implements UserAddressService {
	private UserAddressDao uad = null;

	@Override
	public List<UserAddress> queryAddressByUserId(String userId) {
		List<UserAddress> addressList = new ArrayList<UserAddress>();
		try {
			conn = JDBCUtil.getConnection();
			uad = new UserAddressDaoImpl(conn);
			addressList = uad.queryAddressByUserId(userId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return addressList;
	}

	/**
	 * 地址新增
	 */
	@Override
	public Integer addAddressByUserId(UserAddress userAddress) {
		Integer addAddressByUserId = -1;
		try {
			conn = JDBCUtil.getConnection();
			uad = new UserAddressDaoImpl(conn);
			conn.setAutoCommit(false);
			addAddressByUserId = uad.addAddressByUserId(userAddress);
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return addAddressByUserId;
	}

	@Override
	public UserAddress queryAddressById(String id) {
		UserAddress address = null;
		try {
			conn = JDBCUtil.getConnection();
			uad = new UserAddressDaoImpl(conn);
			address = uad.queryAddressById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			JDBCUtil.closeAll(conn, ps, rs);
		}
		return address;
	}

}
