package com.niu.test;


import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;

import com.niu.service.productCategory.ProductCategoryServiceImpl;
import com.niu.util.ProductCategoryView;


public class MyTest {
	static Logger logger=Logger.getLogger(MyTest.class);
	@Test
	public void testGetUser(){
		ProductCategoryServiceImpl pcsi=new ProductCategoryServiceImpl();
		List<ProductCategoryView> list=pcsi.getAllProductCategory();
		for(ProductCategoryView pcv:list){
			for(ProductCategoryView pcv2:pcv.getPcvList())
			logger.debug(pcv2.getProductCategory().getName());
		}
		
	}
}
