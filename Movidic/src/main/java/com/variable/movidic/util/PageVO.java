package com.variable.movidic.util;

public class PageVO {

	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int total;
	
	private int pageNum;
	private int amount;
	
	private Criteria cri;
	
	public PageVO() {
		// TODO Auto-generated constructor stub
	}
	
	public PageVO(Criteria cri, int total) {
		this.cri=cri;
		this.pageNum=cri.getPageNum();
		this.amount=cri.getAmount();
		
		this.total=total;
		
		this.endPage=(int)Math.ceil(pageNum/5.0)*5;
		this.startPage=this.endPage-5+1;
		
		int realEnd=(int)Math.ceil(this.total/ (double) this.amount);
		if(this.endPage>realEnd) this.endPage=realEnd;
		this.prev=this.startPage>1;
		this.next=realEnd>this.endPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
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

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	
}
