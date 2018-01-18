package com.niu.dao.user;

import java.sql.SQLException;
import java.util.List;

import com.niu.bean.UserAddress;
import com.niu.dao.BaseDao;

public interface UserAddressDao extends BaseDao<UserAddress> {
	/**
	 * 
	 * 根据用户id查询该用户所有的地址！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param userId
	 * @return
	 */
	List<UserAddress> queryAddressByUserId(String userId);

	/**
	 * 
	 * 根据用户Id添加地址！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param userAddress
	 * @return
	 * @throws SQLException
	 */
	Integer addAddressByUserId(UserAddress userAddress) throws SQLException;

	/**
	 * 
	 * 根据地址id查询对应的地址！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param Id
	 *            地址id
	 * @return
	 */
	UserAddress queryAddressById(String id);
}
