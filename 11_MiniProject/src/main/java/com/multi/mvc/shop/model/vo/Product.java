package com.multi.mvc.shop.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int pNo;
	private String title;
	private String link;
	private String image;
	private int lprice;
	private int hprice;
	private String mallName;
	private String productId;
	private String productType;
	private String brand;
	private String maker;
	private String category1;
	private String category2;
	private String category3;
	private String category4;
}
