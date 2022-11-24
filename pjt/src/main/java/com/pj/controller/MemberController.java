package com.pj.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pj.domain.MemberVO;
import com.pj.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/member/*")
@RequiredArgsConstructor
public class MemberController {

	private final MemberService service;
	
	@GetMapping("/join")
	public void join() {}
	
	@PostMapping("/join")
	public String join(MemberVO member, RedirectAttributes rttr) {
		
		service.join(member);
		rttr.addFlashAttribute("msg", "join");
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/login")
	public void login() {}
	
	@PostMapping("/login")
	public String login(MemberVO member, RedirectAttributes rttr, HttpSession session) {
		
		boolean result = service.login(member);

		if(result == true) {		
			session.setAttribute("member", service.getMember(member));
			session.setMaxInactiveInterval(60*20);
		}else {
			rttr.addFlashAttribute("msg", "fail");
			return "redirect:/member/login";
		}
			
		return "redirect:/board/list";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {

			session.invalidate();
				
		return "redirect:/board/list";
	}
	
	@GetMapping({"/info","/modify"})
	public void info(HttpSession session, MemberVO member) {
		
	    session.setAttribute("member", service.getMember(member));	
	}

	@PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		
		service.modify(member);
		rttr.addAttribute("id", member.getId());
		return "redirect:/member/info";
	}
	
	@GetMapping("/remove")
	public String remove(HttpSession session, @RequestParam("id") String id) {
				
		service.remove(id);
		session.invalidate();		
		
		return "redirect:/board/list";
	}
}
