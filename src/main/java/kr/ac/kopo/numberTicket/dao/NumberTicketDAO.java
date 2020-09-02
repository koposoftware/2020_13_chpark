package kr.ac.kopo.numberTicket.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;

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
}
