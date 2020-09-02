package kr.ac.kopo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.TellerVO;

@SessionAttributes({"loginVO"})
@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login")
	public String loginForm() {
		
		return "/login/login";
	}
	
	@GetMapping("/adminLogin")
	public String adminLoginForm() {
		
		return "/login/adminLogin";
	}
	
	@PostMapping("/login")
	public ModelAndView login(MemberVO member) {
	
		MemberVO loginVO = memberService.login(member);
		ModelAndView mav = new ModelAndView();
		
		//로그인 실패
		if(loginVO == null) {
			mav.setViewName("redirect:/login");
		}
		//로그인 성공 
		
		mav.setViewName("redirect:/");
		mav.addObject("loginVO", loginVO);
		return mav;
	}
	
	@PostMapping("/adminLogin")
	public ModelAndView adminLogin(TellerVO teller) {
	
		TellerVO tellerVO = memberService.adminLogin(teller);
		ModelAndView mav = new ModelAndView();
		
		//로그인 실패
		if(tellerVO == null) {
			mav.setViewName("redirect:/adminLogin");
		}
		tellerVO.setType("A");
		System.out.println(tellerVO);
		mav.setViewName("redirect:/");
		mav.addObject("loginVO", tellerVO);
		return mav;
	}
	
	
	@RequestMapping("/logout")
	//public String logout(HttpSession session) {
	public String logout(SessionStatus status) {
		
		//session.invalidate();
		System.out.println(status.isComplete()); //-> false 아직 세션이 안끝나고 유지하고 있다는 의미
		status.setComplete(); // 세션에 들어있는 객체 지운다 -> true
		
		return "redirect:/";
	}
	
	@GetMapping("signup")
	public String signupFrom() {
		return "/login/signup";
	}
	
	@PostMapping("signup")
	public String signup(MemberVO member) {
		System.out.println(member);
		memberService.signup(member);
		return "redirect:/login";
	}
	
	@RequestMapping("/mypage/{id}")
	public ModelAndView detailMypage(@PathVariable("id") String id) {
	
	MemberVO member = memberService.selectMemberById(id);
	System.out.println("id : " + id );
	ModelAndView mav = new ModelAndView("/login/mypage");
	mav.addObject("member", member);
	System.out.println(member);
	return mav;
	}
	
	@GetMapping("/mypageUpdate/{id}")
	public ModelAndView updateForm(@PathVariable("id") String id) {
		
		//MemberVO member = new MemberVO();
		MemberVO member = memberService.selectMemberById(id);
		
		//MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		//if (loginVO != null)
		//member.setId(loginVO.getId());	
		System.out.println(member);
		ModelAndView mav = new ModelAndView("/login/mypageUpdate");
		mav.addObject("memberVO", member);
		//mav.addObject("memberVO2", member2);
		return mav;
	}
	
	@PostMapping("/mypageUpdate/{id}")
	public ModelAndView update(@PathVariable("id") String id, MemberVO member) {
		
		memberService.updateMypage(member);
		
		MemberVO member2 = memberService.selectMemberById(id);
		System.out.println(member);
		ModelAndView mav = new ModelAndView("/login/mypage");
		mav.addObject("member", member2);
		return mav;
	}
}
