package com.pj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pj.domain.BoardVO;
import com.pj.domain.PageDTO;
import com.pj.domain.PageInfo;
import com.pj.service.BoardService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board/*")
public class BoardController {

	private final BoardService service;
	
	@GetMapping("/list")
	public void list(PageInfo page, Model model) {
		
		Long total = service.getTotal(page);
	
	  	model.addAttribute("list", service.getList(page));
		model.addAttribute("numList", new PageDTO(page, total));
	}
	
	@GetMapping({"/info","/modify"})
	public void info(@RequestParam("num") Long num, PageInfo page, Model model) {
		
		if(page.getModifyCheck() != null) {
			service.viewsUpdate(num);
		}
		model.addAttribute("board", service.getOneBoard(num));
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board, PageInfo page, RedirectAttributes rttr) {
			  
		service.modify(board);
		
		rttr.addAttribute("num", board.getNum());
		rttr.addAttribute("pageNum", page.getPageNum());
		   
		return "redirect:/board/info";
	}
	
	@GetMapping("/remove")
	public String delete(@RequestParam("num") Long num, PageInfo page, RedirectAttributes rttr) {
		
		service.remove(num);
		
		rttr.addAttribute("pageNum", page.getPageNum());
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/register")
	public void register(Model model) {}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		
		service.register(board);
		rttr.addAttribute("num", board.getNum());
		return "redirect:/board/info";
	}

}
