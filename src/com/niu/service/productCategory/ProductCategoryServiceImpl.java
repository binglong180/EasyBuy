package com.niu.service.productCategory;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.niu.bean.ProductCategory;
import com.niu.dao.product.ProductCategoryDao;
import com.niu.dao.product.ProductCategoryDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.util.JDBCUtil;
import com.niu.util.ProductCategoryView;

public class ProductCategoryServiceImpl extends
		BaseServiceImpl<ProductCategory> implements ProductCategoryService {

	@Override
	public List<ProductCategory> selectByParentId(String parentId) {
		List<ProductCategory> productCategoryLists = null;
		try {
			conn = JDBCUtil.getConnection();
			ProductCategoryDao pcd = new ProductCategoryDaoImpl(conn);

			productCategoryLists = pcd.selectByParentId(parentId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productCategoryLists;
	}

	@Override
	@Test
	public List<ProductCategoryView> getAllProductCategory() {
		List<ProductCategoryView> productCategoryViewList1 = new ArrayList<ProductCategoryView>();// 包装类中的
		List<ProductCategory> productCategoryList1 = selectByParentId("0");// 一级菜单列表
		for(ProductCategory productCategory:productCategoryList1){
			ProductCategoryView productCategoryView1=new ProductCategoryView();
			//设置一级属性的ProductCategory
			productCategoryView1.setProductCategory(productCategory);
			//查找一级该分类的下属
			List<ProductCategoryView> productCategoryViewList2 = new ArrayList<ProductCategoryView>();
			List<ProductCategory> productCategoryList2 = selectByParentId(productCategory.getId().toString());
			for(ProductCategory productCategory1:productCategoryList2){
				ProductCategoryView productCategoryView2=new ProductCategoryView();
				productCategoryView2.setProductCategory(productCategory1);
				List<ProductCategoryView> productCategoryViewList3 = new ArrayList<ProductCategoryView>();
				List<ProductCategory> productCategoryList3 = selectByParentId(productCategory1.getId().toString());
				for(ProductCategory productCategory2:productCategoryList3){
					ProductCategoryView productCategoryView3=new ProductCategoryView();
					productCategoryView3.setProductCategory(productCategory2);
					productCategoryViewList3.add(productCategoryView3);
				}
				productCategoryView2.setPcvList(productCategoryViewList3);
				productCategoryViewList2.add(productCategoryView2);
			}
			productCategoryView1.setPcvList(productCategoryViewList2);
			productCategoryViewList1.add(productCategoryView1);
		}
		return productCategoryViewList1;
	}
}
