package com.pj.mapper;

import java.util.List;

import com.pj.domain.BoardVO;
import com.pj.domain.PageInfo;

public interface BoardMapper {

	public List<BoardVO> getList(PageInfo page);
	
	public BoardVO getOneBoard(Long num);
	
	public void viewsUpdate(Long num);
	
	public void modify(BoardVO board);
	
	public void remove(Long num);
	
	public Long register(BoardVO board);
	
	public Long getTotal(PageInfo page);
}
