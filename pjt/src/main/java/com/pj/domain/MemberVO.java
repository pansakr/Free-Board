package com.pj.domain;

import lombok.Data;

@Data
public class MemberVO {

	private String id;
	private String password;
	private String passwordChk;
	private String email;
	private String phone;
	private int age;
	private String gender;
	
}
