package kr.ac.kopo.numberTicket.service;

import java.util.List;


import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;


public interface NumberTicketService {

	public List<NumberTicket_LatLngVO> selectLatLng();
}
