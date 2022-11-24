package com.pj.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private Long num;
	private String writer_fk;
	private String title;
	private String content;
	private Date reg_date;
	private int read_count;
}
