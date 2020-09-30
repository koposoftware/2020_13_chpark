package kr.ac.kopo.numberTicket.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.ac.kopo.numberTicket.vo.AdminTicketVO;
import kr.ac.kopo.numberTicket.vo.AnalysisVO;
import kr.ac.kopo.numberTicket.vo.BasketVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;
import kr.ac.kopo.numberTicket.vo.PreSubmitVO;
import kr.ac.kopo.numberTicket.vo.ServiceDescVO;
import kr.ac.kopo.numberTicket.vo.UserTicketVO;

public interface NumberTicketDAO {

	public List<NumberTicket_LatLngVO> selectLatLng();
	
	public List<NumberTicket_LatLngVO> selectList(String location);
	
	public NumberTicket_NumberTicketVO selectStandBy100(String location);
	public NumberTicket_NumberTicketVO selectStandBy200(String location);
	public NumberTicket_NumberTicketVO selectStandBy300(String location);
	public NumberTicket_NumberTicketVO selectStandBy400(String location);
	public NumberTicket_NumberTicketVO insertSelectNumberTicket(String locations, String service, HttpSession session);
	public String selectServiceName(String service_id);
	//public NumberTicket_NumberTicketVO selectNumberTicket(String locations, String service, HttpSession session);

	public List<ServiceDescVO> selectListServiceDesc();

	public List<UserTicketVO> userTicket(String id);

	public List<AdminTicketVO> adminTicket(String tellerId);
	public List<AdminTicketVO> adminTicket100(String tellerId);
	public List<AdminTicketVO> adminTicket200(String tellerId);
	public List<AdminTicketVO> adminTicket300(String tellerId);
	public List<AdminTicketVO> adminTicket400(String tellerId);

	public int adminTicketUpdate(NumberTicket_NumberTicketVO vo);

	public NumberTicket_NumberTicketVO selectTicket(NumberTicket_NumberTicketVO vo);

	public void insertAnalysis(AnalysisVO analysisvo);

	public void deleteTicket(NumberTicket_NumberTicketVO vo);
	
	public List<AnalysisVO> selectAnalysis(String tellerId);
	
	public void insertBasket(HttpSession session, String locations);
	
	public List<BasketVO> selectBasketList(String id);
	
	public AnalysisVO selectAnalysisTotal(String locations);
	public AnalysisVO selectAnalysis100(String locations);
	public AnalysisVO selectAnalysis200(String locations);
	public AnalysisVO selectAnalysis300(String locations);
	public AnalysisVO selectAnalysis400(String locations);
	
	public List<AnalysisVO> selectWeekVisit(String locations);
	
	public void insertPreSubmit(HttpSession session, PreSubmitVO pre);
	
	public List<PreSubmitVO> selectAllPre(String locations);
	
	public PreSubmitVO selectDetailByNo(int numberticketNumber, HttpSession session);
	
}
