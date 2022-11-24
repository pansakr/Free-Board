package com.pj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pj.domain.BoardVO;
import com.pj.domain.PageInfo;
import com.pj.mapper.BoardMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

	private final BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList(PageInfo page) {
		
		return mapper.getList(page);
	}

	@Override
	public BoardVO getOneBoard(Long num) {
		
		return mapper.getOneBoard(num);
	}

	@Override
	public void viewsUpdate(Long num) {
		
		mapper.viewsUpdate(num);
	}

	@Override
	public void modify(BoardVO board) {
		
		mapper.modify(board);		
	}

	@Override
	public void remove(Long num) {
		
		mapper.remove(num);
	}

	@Override
	public Long register(BoardVO board) {
		
		return mapper.register(board);
	}

	@Override
	public Long getTotal(PageInfo page) {
		
		return mapper.getTotal(page);
	}

}
