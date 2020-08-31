package kr.ac.kopo.numberTicket.dao;

import java.util.List;

import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;

public interface NumberTicketDAO {

	public List<NumberTicket_LatLngVO> selectLatLng();
	
	public List<NumberTicket_LatLngVO> selectList(String location);
}
