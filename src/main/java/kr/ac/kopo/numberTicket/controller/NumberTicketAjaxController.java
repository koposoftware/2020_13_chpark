package kr.ac.kopo.numberTicket.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.TellerVO;
import kr.ac.kopo.numberTicket.service.NumberTicketService;
import kr.ac.kopo.numberTicket.vo.AdminTicketVO;
import kr.ac.kopo.numberTicket.vo.AnalysisVO;
import kr.ac.kopo.numberTicket.vo.BasketVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;
import kr.ac.kopo.numberTicket.vo.TicketVO;
import kr.ac.kopo.numberTicket.vo.UserTicketVO;

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

	@GetMapping("/numberservice/{locations}/{service}")
	public Map<String, TicketVO> ticket(@PathVariable("locations") String locations, @PathVariable("service") String service, HttpSession session) {
		
		//numberTicketService.insertNumberTicket(locations, service, session);
		System.out.println(locations);
		System.out.println(service);
		NumberTicket_NumberTicketVO nt = numberTicketService.insertSelectNumberTicket(locations, service, session);
		
		NumberTicket_NumberTicketVO countVO = null;
		if(service.equals("100")) {
			countVO = numberTicketService.selectStandBy100(locations);
		}else if(service.equals("200")) {
			countVO = numberTicketService.selectStandBy200(locations);	
		}else if(service.equals("300")) {
			countVO = numberTicketService.selectStandBy300(locations);
		}else if(service.equals("400")) {
			countVO = numberTicketService.selectStandBy400(locations);
		}
		
		Map<String,TicketVO> returnVal = new HashMap<>();
		
		TicketVO vo = new TicketVO();
		
		vo.setServiceName(nt.getService_name());
		vo.setBranchName(nt.getBranch_name());
		vo.setNumberticketNumber(nt.getNumberticket_number());
		vo.setStandby(countVO.getStandby());
		vo.setStandbyTime(countVO.getStandbyTime());
		
		returnVal.put("data", vo);
		
		return returnVal;
	}
	
	
	@GetMapping("/numberservice/userTicket")
	public List<UserTicketVO> userTicket(HttpSession session) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		
		return numberTicketService.userTicket(loginVO.getId());
	}
	
	@GetMapping("/numberservice/adminTicket")
	public List<AdminTicketVO> adminTicket(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		
		return numberTicketService.adminTicket(loginVO.getTellerId());
	}
	
	@GetMapping("/numberservice/adminTicket100")
	public List<AdminTicketVO> adminTicket100(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		
		return numberTicketService.adminTicket100(loginVO.getTellerId());
	}
	
	@GetMapping("/numberservice/adminTicket200")
	public List<AdminTicketVO> adminTicket200(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		
		return numberTicketService.adminTicket200(loginVO.getTellerId());
	}
	
	@GetMapping("/numberservice/adminTicket300")
	public List<AdminTicketVO> adminTicket300(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		
		return numberTicketService.adminTicket300(loginVO.getTellerId());
	}
	
	@GetMapping("/numberservice/adminTicket400")
	public List<AdminTicketVO> adminTicket400(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		
		return numberTicketService.adminTicket400(loginVO.getTellerId());
	}
	
	
	@GetMapping("/numberservice/ticketupdate/{numberticketSeq}")
	public int adminTicketUpdate(@PathVariable("numberticketSeq") int numberticketSeq,HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		
		NumberTicket_NumberTicketVO vo = new NumberTicket_NumberTicketVO();
		vo.setTeller_id(loginVO.getTellerId());
		vo.setNumberticket_seq(numberticketSeq);
		System.out.println(vo);
		return numberTicketService.adminTicketUpdate(vo);
	}
	
	@GetMapping("/numberservice/ticketdelete/{numberticketSeq}")
	public int adminTicketDelete(@PathVariable("numberticketSeq") int numberticketSeq,HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		
		NumberTicket_NumberTicketVO vo = new NumberTicket_NumberTicketVO();
		vo.setNumberticket_seq(numberticketSeq);

		NumberTicket_NumberTicketVO info = numberTicketService.selectTicket(vo);
		
		AnalysisVO analysisvo = new AnalysisVO();
		analysisvo.setAnalysisDate(info.getNumberticket_date());
		analysisvo.setAnalysisNumber(info.getNumberticket_number());
		analysisvo.setAnalysisTime(info.getNumberticket_time());
		analysisvo.setBranchId(info.getBranch_id());
		analysisvo.setBranchName(info.getBranch_name());
		analysisvo.setServiceId(info.getService_id());
		analysisvo.setTellerId(info.getTeller_id());
		analysisvo.setUsersId(info.getUsers_id());
		analysisvo.setUsersName(info.getUser_name());
		
		numberTicketService.insertAnalysis(analysisvo);
		
		numberTicketService.deleteTicket(vo);
		
		return 1;
	}
	
	@GetMapping("/numberservice/selectAnalysis")
	public List<AnalysisVO> selectAnalysis(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		
		return numberTicketService.selectAnalysis(loginVO.getTellerId());
	}
	
	@GetMapping("/location/basket/{locations}")
	public void insertBasket(HttpSession session, @PathVariable("locations") String locations) {
		numberTicketService.insertBasket(session, locations);
	}
	
	@GetMapping("/indexBasketList")
	@ResponseBody
	public List<BasketVO> selectIndexBasketList(HttpSession session) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		System.out.println(loginVO);
		List<BasketVO> basketList = numberTicketService.selectBasketList(loginVO.getId());
		System.out.println(basketList);
		return basketList;
	}
	
	@GetMapping("/numberservice/selectAnalysisTotal")
	@ResponseBody
	public AnalysisVO selectAnalysisTotal(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		System.out.println(loginVO);
		AnalysisVO total = numberTicketService.selectAnalysisTotal(loginVO.getBranchName());
		System.out.println(total);
		return total;
	}
	
	@GetMapping("/numberservice/selectAnalysis100")
	@ResponseBody
	public AnalysisVO selectAnalysis100(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		System.out.println(loginVO);
		AnalysisVO total = numberTicketService.selectAnalysis100(loginVO.getBranchName());
		System.out.println(total);
		return total;
	}
	
	@GetMapping("/numberservice/selectAnalysis200")
	@ResponseBody
	public AnalysisVO selectAnalysis200(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		System.out.println(loginVO);
		AnalysisVO total = numberTicketService.selectAnalysis200(loginVO.getBranchName());
		System.out.println(total);
		return total;
	}
	
	@GetMapping("/numberservice/selectAnalysis300")
	@ResponseBody
	public AnalysisVO selectAnalysis300(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		System.out.println(loginVO);
		AnalysisVO total = numberTicketService.selectAnalysis300(loginVO.getBranchName());
		System.out.println(total);
		return total;
	}
	
	@GetMapping("/numberservice/selectAnalysis400")
	@ResponseBody
	public AnalysisVO selectAnalysis400(HttpSession session) {
		TellerVO loginVO = (TellerVO)session.getAttribute("loginVO");
		System.out.println(loginVO);
		AnalysisVO total = numberTicketService.selectAnalysis400(loginVO.getBranchName());
		System.out.println(total);
		return total;
	}
}
