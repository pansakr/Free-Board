package com.pj.service;

import org.springframework.stereotype.Service;

import com.pj.domain.MemberVO;
import com.pj.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{

	private final MemberMapper mapper;
	
	@Override
	public void join(MemberVO member) {
		
		mapper.join(member);	
	}

	@Override
	public boolean login(MemberVO member) {
		
		boolean result = false;
		int login = mapper.login(member);
		
		if(login > 0) result = true;
		
		return result;
	}

	@Override
	public MemberVO getMember(MemberVO member) {
		
		return mapper.getMember(member);
	}

	@Override
	public void modify(MemberVO member) {
		
		mapper.modify(member);
	}

	@Override
	public void remove(String id) {
		
		mapper.remove(id);
	}

	
}
