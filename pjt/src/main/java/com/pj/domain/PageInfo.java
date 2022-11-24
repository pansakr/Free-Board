package com.pj.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageInfo {

	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	private String modifyCheck;
	
	public PageInfo() {
		this.pageNum = 1;
	    this.amount = 10;
	}

	public PageInfo(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		
		return type == null? new String[] {} : type.split("");
	}
}
