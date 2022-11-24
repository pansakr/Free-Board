package com.pj.service;

import com.pj.domain.MemberVO;

public interface MemberService {

	public void join(MemberVO member);
	
	public boolean login(MemberVO member);
	
	public MemberVO getMember(MemberVO member);
	
	public void modify(MemberVO member);
	
	public void remove(String id);
}
