package com.niu.util;

import java.util.List;

import com.niu.bean.ProductCategory;
/**
 * 
 * 三级列表的包装类！
 * 
 * @author 牛牛牛！！！牛牛！！牛！
 *
 * @date 2018-1-1
 *
 * @version 
 *
 */
public class ProductCategoryBox {
	private ProductCategory productCategory;
	private List<ProductCategoryBox> pcvList;
	
	public ProductCategoryBox(ProductCategory productCategory,
			List<ProductCategoryBox> pcvList) {
		super();
		this.productCategory = productCategory;
		this.pcvList = pcvList;
	}
	public ProductCategoryBox() {
		super();
	}
	public ProductCategory getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}
	public List<ProductCategoryBox> getPcvList() {
		return pcvList;
	}
	public void setPcvList(List<ProductCategoryBox> pcvList) {
		this.pcvList = pcvList;
	}
	@Override
	public String toString() {
		return "ProductCategoryView [productCategory=" + productCategory
				+ ", pcvList=" + pcvList + "]";
	}
	
	
}
