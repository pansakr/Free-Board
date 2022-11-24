package com.pj.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageDTO {

	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private Long total;
	private PageInfo pi;
	
	public PageDTO(PageInfo pi, Long total) {
		this.pi = pi;
		this.total = total;
	
	
	this.endPage = (int) ((Math.ceil(pi.getPageNum() / 10.0)) * 10);
	
	this.startPage = this.endPage -9;
	
	int realEnd = (int) (Math.ceil((total * 1.0) / pi.getAmount()));
	
	if(realEnd < this.endPage) {
		this.endPage = realEnd;
	}
	
	this.prev = this.startPage > 1;
	
	this.next = this.endPage < realEnd;
 }
}
