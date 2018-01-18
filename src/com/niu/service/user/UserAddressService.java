package com.niu.service.user;

import java.util.List;

import com.niu.bean.UserAddress;
import com.niu.service.BaseService;

public interface UserAddressService extends BaseService<UserAddress> {
	/**
	 * 
	 * 根据用户Id查找用户的地址信息！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-11
	 * 
	 * @param userId
	 * @return
	 */
	List<UserAddress> queryAddressByUserId(String userId);

	/**
	 * 
	 * 新增地址！
	 * 
	 * @author 牛牛
	 * 
	 * @date 2018-1-12
	 * 
	 * @param userId
	 * @param userAddress
	 * @return
	 */
	Integer addAddressByUserId(UserAddress userAddress);

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
