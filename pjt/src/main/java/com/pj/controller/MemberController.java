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
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/member/join")
    public void join() {
        // TODO: 회원가입 페이지 뷰 이름을 반환해야 할 것 같아요.
        
    }

    @PostMapping("/member/join")
    public String join(MemberVO member, RedirectAttributes rttr) {
        memberService.join(member);
        rttr.addFlashAttribute("msg", "join");

        return "redirect:/board/list";
    }

    @GetMapping("/login")
    public void login() {
        // TODO: 로그인 페이지 뷰 이름을 반환해야 할 것 같아요.

    }

    @PostMapping("/login")
    public String login(MemberVO member, RedirectAttributes rttr, HttpSession session) {
        boolean isLogin = memberService.login(member);

        if (!isLogin) {
            rttr.addFlashAttribute("msg", "fail");
            return "redirect:/member/login";
        }

        session.setAttribute("member", memberService.getMember(member));
        session.setMaxInactiveInterval(60 * 20);

        return "redirect:/board/list";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/board/list";
    }

    @GetMapping({"/info", "/modify"})
    public void info(HttpSession session, MemberVO member) {
        session.setAttribute("member", memberService.getMember(member));
    }

    @PostMapping("/modify")
    public String modify(MemberVO member, RedirectAttributes rttr) {
        memberService.modify(member);
        rttr.addAttribute("id", member.getId());

        return "redirect:/member/info";
    }

    @GetMapping("/remove")
    public String remove(HttpSession session, @RequestParam("id") String id) {
        memberService.remove(id);
        session.invalidate();

        return "redirect:/board/list";
    }

}
