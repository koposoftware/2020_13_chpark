package kr.ac.kopo.numberTicket.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.numberTicket.service.NumberTicketService;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;

@Controller
public class NumberTicketController {
	
	@Autowired
	private NumberTicketService numberTicketService;
	
	@RequestMapping("/numberTicket_branch")
	public String numberTicket_branch() {
		
		return "numberTicket/numberTicket_branch";
	}
	
	@RequestMapping("/numberTicket_1")
	public String numberTicket_1() {
		
		return "numberTicket/numberTicket_1";
	}
	
	@RequestMapping("/numberTicket/LatLng.json")
	@ResponseBody
	public Map<String, List<NumberTicket_LatLngVO>> resJsonBody(){
		//System.out.println("numvberTicket");
		Map<String, List<NumberTicket_LatLngVO>> LatLng = new HashMap<>();
		List<NumberTicket_LatLngVO> result = numberTicketService.selectLatLng();
		LatLng.put("positions", result);
		return LatLng;
	}
	
	@RequestMapping("/location/reservation/{locations}")
	public ModelAndView reservation(@PathVariable("locations") String locations){
		ModelAndView mav = new ModelAndView();
		NumberTicket_NumberTicketVO nt100 = numberTicketService.selectStandBy100(locations);
		NumberTicket_NumberTicketVO nt200 = numberTicketService.selectStandBy200(locations);
		NumberTicket_NumberTicketVO nt300 = numberTicketService.selectStandBy300(locations);
		NumberTicket_NumberTicketVO nt400 = numberTicketService.selectStandBy400(locations);
		mav.addObject("locations", locations);
		mav.addObject("nt100", nt100);
		System.out.println(nt100);
		mav.addObject("nt200", nt200);
		System.out.println(nt200);
		mav.addObject("nt300", nt300);
		System.out.println(nt300);
		mav.addObject("nt400", nt400);
		System.out.println(nt400);
		mav.setViewName("/numberTicket/numberTicket_2");
		return mav;
	}	
	
	@RequestMapping("/numberservice/{locations}/{service}")
	public ModelAndView ticket(@PathVariable("locations") String locations, @PathVariable("service") String service, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		//numberTicketService.insertNumberTicket(locations, service, session);
		NumberTicket_NumberTicketVO nt = numberTicketService.insertSelectNumberTicket(locations, service, session);
		NumberTicket_NumberTicketVO nt100 = numberTicketService.selectStandBy100(locations);
		NumberTicket_NumberTicketVO nt200 = numberTicketService.selectStandBy200(locations);
		NumberTicket_NumberTicketVO nt300 = numberTicketService.selectStandBy300(locations);
		NumberTicket_NumberTicketVO nt400 = numberTicketService.selectStandBy400(locations);
		System.out.println(locations);
		System.out.println(service);
		MemberVO login = (MemberVO)session.getAttribute("loginVO"); 
		System.out.println(".....");
		System.out.println(login);
		System.out.println(nt);
		mav.addObject("login", login);
		mav.addObject("locations", locations);
		mav.addObject("service", service);
		mav.setViewName("/numberTicket/numberTicket_my");
		mav.addObject("nt", nt);
		mav.addObject("nt100", nt100);
		mav.addObject("nt200", nt200);
		mav.addObject("nt300", nt300);
		mav.addObject("nt400", nt400);

		return mav;
	}
	
	
	
	
	
	
	
	
	
	
}
