package kr.ac.kopo.numberTicket.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.numberTicket.service.NumberTicketService;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;

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
		System.out.println("numvberTicket");
		Map<String, List<NumberTicket_LatLngVO>> LatLng = new HashMap<>();
		List<NumberTicket_LatLngVO> result = numberTicketService.selectLatLng();
		LatLng.put("positions", result);
		return LatLng;
	}
	
	@GetMapping("/location/reservation/{location}")
	public ModelAndView reservation(@PathVariable("location") String location){
		ModelAndView mav = new ModelAndView();
		mav.addObject("location", location);
		mav.setViewName("/numberTicket/numberTicket_2");
		return mav;
	}	
}
