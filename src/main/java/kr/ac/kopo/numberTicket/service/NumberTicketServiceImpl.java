package kr.ac.kopo.numberTicket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.numberTicket.dao.NumberTicketDAO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;

@Service
public class NumberTicketServiceImpl implements NumberTicketService{

	@Autowired
	private NumberTicketDAO numberTicketDAO;
	
	@Override
	public List<NumberTicket_LatLngVO> selectLatLng() {
		List<NumberTicket_LatLngVO> LanLng = numberTicketDAO.selectLatLng();
		return LanLng;
	}

	
}
