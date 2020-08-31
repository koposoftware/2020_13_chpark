package kr.ac.kopo.numberTicket.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.numberTicket.service.NumberTicketService;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;

@RestController
public class NumberTicketAjaxController {
	
	@Autowired
	NumberTicketService numberTicketService;
	
	@GetMapping("/location/{location}")
	public Map<String, List<NumberTicket_LatLngVO>> resJsonBody2(@PathVariable("location") String location){
		System.out.println(location);
		Map<String,List<NumberTicket_LatLngVO>> BranchList = new HashMap<>();
		List<NumberTicket_LatLngVO> result = numberTicketService.selectList(location);
		BranchList.put("data", result);
		return BranchList;
	}	
	
}
