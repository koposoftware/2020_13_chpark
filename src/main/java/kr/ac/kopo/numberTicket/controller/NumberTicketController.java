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
import kr.ac.kopo.member.vo.TellerVO;
import kr.ac.kopo.numberTicket.service.NumberTicketService;
import kr.ac.kopo.numberTicket.vo.AnalysisVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;
import kr.ac.kopo.numberTicket.vo.ServiceDescVO;
import kr.ac.kopo.numberTicket.vo.TicketVO;

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
	
	@RequestMapping("/numberTicket_my")
	public String numberTicket_my() {
		
		return "numberTicket/numberTicket_my";
	}
	
	@RequestMapping("/numberTicket_admin")
	public String numberTicket_admin() {
		
		return "numberTicket/numberTicket_admin";
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
		
		List<ServiceDescVO> serviceDescList = numberTicketService.selectListServiceDesc();
		
		mav.addObject("locations", locations);
		mav.addObject("nt100", nt100);
		System.out.println(nt100);
		mav.addObject("nt200", nt200);
		System.out.println(nt200);
		mav.addObject("nt300", nt300);
		System.out.println(nt300);
		mav.addObject("nt400", nt400);
		System.out.println(nt400);
		mav.addObject("serviceDescList", serviceDescList);
		System.out.println(serviceDescList);
		mav.setViewName("/numberTicket/numberTicket_2");
		return mav;
	}	
	
	@RequestMapping("/numberTicket/analysis")
	public ModelAndView numberTicket_analysis(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		//System.out.println(loginVO);
		ModelAndView mav = new ModelAndView();
		List<AnalysisVO> weekVisit = numberTicketService.selectWeekVisit(loginVO.getBranchName());
		mav.addObject("weekVisit", weekVisit);
		for(AnalysisVO a :weekVisit) {
			System.out.println(a);
		}
		mav.setViewName("/numberTicket/numberTicket_manager");
		return mav;
	}
}
