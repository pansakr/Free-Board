package com.pj.mapper;

import com.pj.domain.MemberVO;

public interface MemberMapper {

	public void join(MemberVO member);
	
	public int login(MemberVO member);
	
	public MemberVO getMember(MemberVO member);
	
	public void modify(MemberVO member);
	
	public void remove(String id);
}
