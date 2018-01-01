package com.niu.util;

import java.util.List;

import com.niu.bean.ProductCategory;
/**
 * 
 * 三级列表的包含类！
 * 
 * @author 牛牛牛！！！牛牛！！牛！
 *
 * @date 2018-1-1
 *
 * @version 
 *
 */
public class ProductCategoryView {
	private ProductCategory productCategory;
	private List<ProductCategoryView> pcvList;
	
	public ProductCategoryView(ProductCategory productCategory,
			List<ProductCategoryView> pcvList) {
		super();
		this.productCategory = productCategory;
		this.pcvList = pcvList;
	}
	public ProductCategoryView() {
		super();
	}
	public ProductCategory getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}
	public List<ProductCategoryView> getPcvList() {
		return pcvList;
	}
	public void setPcvList(List<ProductCategoryView> pcvList) {
		this.pcvList = pcvList;
	}
	@Override
	public String toString() {
		return "ProductCategoryView [productCategory=" + productCategory
				+ ", pcvList=" + pcvList + "]";
	}
	
	
}
