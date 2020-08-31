package kr.ac.kopo.numberTicket.service;

import java.util.List;


import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;


public interface NumberTicketService {

	public List<NumberTicket_LatLngVO> selectLatLng();
	
	public List<NumberTicket_LatLngVO> selectList(String location);
	
	public NumberTicket_NumberTicketVO selectStandBy100(String location);
	public NumberTicket_NumberTicketVO selectStandBy200(String location);
	public NumberTicket_NumberTicketVO selectStandBy300(String location);
	public NumberTicket_NumberTicketVO selectStandBy400(String location);
}
