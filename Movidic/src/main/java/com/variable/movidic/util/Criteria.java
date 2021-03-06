package com.variable.movidic.util;

import java.util.List;
import java.util.Map;

public class Criteria {

	private int pageNum;
	private int amount;
	private String genreName;
	
	private Map<String, List<String>> checkObj;
	
	
	public Criteria() {
		this(1, 12);
	}



	public Criteria(int pageNum, int amount) {
		this.pageNum= pageNum;
		this.amount= amount;
	}



	public int getPageNum() {
		return pageNum;
	}



	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}



	public int getAmount() {
		return amount;
	}



	public void setAmount(int amount) {
		this.amount = amount;
	}



	public String getGenreName() {
		return genreName;
	}



	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}



	public Map<String, List<String>> getCheckObj() {
		return checkObj;
	}



	public void setCheckObj(Map<String, List<String>> checkObj) {
		this.checkObj = checkObj;
	}




	
}
