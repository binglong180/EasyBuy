package com.niu.service.product;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.niu.bean.ProductCategory;
import com.niu.dao.product.ProductCategoryDao;
import com.niu.dao.product.ProductCategoryDaoImpl;
import com.niu.service.BaseServiceImpl;
import com.niu.util.EmptyUtil;
import com.niu.util.JDBCUtil;
import com.niu.util.ProductCategoryBox;

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
		} finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return productCategoryLists;
	}

	/**
	 * 获得商品分类
	 */
	public List<ProductCategoryBox> getAllProductCategory() {
		List<ProductCategoryBox> productCategoryViewList1 = new ArrayList<ProductCategoryBox>();// 包装类中的																						// List<ProductCategory>
		List<ProductCategory> productCategoryList1 = selectByParentId("0");// 一级菜单列表
		for (ProductCategory productCategory : productCategoryList1) {
			ProductCategoryBox productCategoryView1 = new ProductCategoryBox();
			// 设置一级属性的ProductCategory
			productCategoryView1.setProductCategory(productCategory); // 查找一级该分类的下属
			List<ProductCategoryBox> productCategoryViewList2 = new ArrayList<ProductCategoryBox>();
			List<ProductCategory> productCategoryList2 = selectByParentId(productCategory
					.getId().toString());
			for (ProductCategory productCategory1 : productCategoryList2) {
				ProductCategoryBox productCategoryView2 = new ProductCategoryBox();
				productCategoryView2.setProductCategory(productCategory1);
				List<ProductCategoryBox> productCategoryViewList3 = new ArrayList<ProductCategoryBox>();
				List<ProductCategory> productCategoryList3 = selectByParentId(productCategory1
						.getId().toString());
				for (ProductCategory productCategory2 : productCategoryList3) {
					ProductCategoryBox productCategoryView3 = new ProductCategoryBox();
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

/**
 * 获取商品分类
 */
/*
 * @Override public List<ProductCategoryBox> getAllProductCategory(
 * List<ProductCategory> productCategoryList) { List<ProductCategoryBox>
 * productCategoryViewList = new ArrayList<ProductCategoryBox>();// 包装类中的菜单 //
 * 一级菜单列表 for (ProductCategory productCategory : productCategoryList) {
 * ProductCategoryBox productCategoryView = new ProductCategoryBox(); //
 * 设置一级属性的ProductCategory
 * productCategoryView.setProductCategory(productCategory); // 查找一级该分类的下属
 * List<ProductCategory> productCategoryChildrenList =
 * selectByParentId(productCategory .getId().toString());
 * List<ProductCategoryBox> pBoxs = new ArrayList<ProductCategoryBox>(); for
 * (ProductCategory productCategory2 : productCategoryChildrenList) {
 * ProductCategoryBox pBox = new ProductCategoryBox();
 * pBox.setProductCategory(productCategory2); pBoxs.add(pBox); } if
 * (!EmptyUtil.isEmpty(productCategoryChildrenList)) { productCategoryView
 * .setPcvList(pBoxs); getAllProductCategory(productCategoryChildrenList); }
 * productCategoryViewList.add(productCategoryView); } return
 * productCategoryViewList; }
 */
/*
 * public List<ProductCategoryBox> getAllProductCategory(
 * List<ProductCategoryBox> productCategoryBoxList) { for (ProductCategoryBox
 * productCategoryBox : productCategoryBoxList) { List<ProductCategory>
 * productCategoryChildrenList =
 * selectByParentId(productCategoryBox.getProductCategory()
 * .getId().toString()); if (!EmptyUtil.isEmpty(productCategoryChildrenList)) {
 * List<ProductCategoryBox> pBoxs = new ArrayList<ProductCategoryBox>(); for
 * (ProductCategory productCategory2 : productCategoryChildrenList) {
 * ProductCategoryBox pBox = new ProductCategoryBox();
 * pBox.setProductCategory(productCategory2); pBoxs.add(pBox); }
 * productCategoryBox.setPcvList(pBoxs);
 * getAllProductCategory(productCategoryBox.getPcvList()); } } return
 * productCategoryBoxList; }
 */

