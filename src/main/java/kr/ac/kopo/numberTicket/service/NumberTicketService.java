package kr.ac.kopo.numberTicket.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.ac.kopo.numberTicket.vo.AdminTicketVO;
import kr.ac.kopo.numberTicket.vo.AnalysisVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;
import kr.ac.kopo.numberTicket.vo.ServiceDescVO;
import kr.ac.kopo.numberTicket.vo.UserTicketVO;


public interface NumberTicketService {

	public List<NumberTicket_LatLngVO> selectLatLng();
	
	public List<NumberTicket_LatLngVO> selectList(String location);
	
	public NumberTicket_NumberTicketVO selectStandBy100(String location);
	public NumberTicket_NumberTicketVO selectStandBy200(String location);
	public NumberTicket_NumberTicketVO selectStandBy300(String location);
	public NumberTicket_NumberTicketVO selectStandBy400(String location);
	public NumberTicket_NumberTicketVO insertSelectNumberTicket(String locations, String service, HttpSession session);
	//public NumberTicket_NumberTicketVO selectNumberTicket(String locations, String service, HttpSession session);

	List<ServiceDescVO> selectListServiceDesc();

	public List<UserTicketVO> userTicket(String id);

	public List<AdminTicketVO> adminTicket(String tellerId);

	public int adminTicketUpdate(NumberTicket_NumberTicketVO vo);

	public NumberTicket_NumberTicketVO selectTicket(NumberTicket_NumberTicketVO vo);

	public void insertAnalysis(AnalysisVO analysisvo);

	public void deleteTicket(NumberTicket_NumberTicketVO vo);
}
