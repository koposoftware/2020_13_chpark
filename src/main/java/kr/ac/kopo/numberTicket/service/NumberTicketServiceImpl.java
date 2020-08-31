package kr.ac.kopo.numberTicket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.numberTicket.dao.NumberTicketDAO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;

@Service
public class NumberTicketServiceImpl implements NumberTicketService{

	@Autowired
	private NumberTicketDAO numberTicketDAO;
	
	@Override
	public List<NumberTicket_LatLngVO> selectLatLng() {
		List<NumberTicket_LatLngVO> LanLng = numberTicketDAO.selectLatLng();
		return LanLng;
	}

	@Override
	public List<NumberTicket_LatLngVO> selectList(String location) {
		List<NumberTicket_LatLngVO> BranchList = numberTicketDAO.selectList(location);
		return BranchList;
	}

	@Override
	public NumberTicket_NumberTicketVO selectStandBy100(String location) {
		NumberTicket_NumberTicketVO nt100 = numberTicketDAO.selectStandBy100(location);
		return nt100;
	}
	
	@Override
	public NumberTicket_NumberTicketVO selectStandBy200(String location) {
		NumberTicket_NumberTicketVO nt200 = numberTicketDAO.selectStandBy200(location);
		return nt200;
	}
	
	@Override
	public NumberTicket_NumberTicketVO selectStandBy300(String location) {
		NumberTicket_NumberTicketVO nt300 = numberTicketDAO.selectStandBy300(location);
		return nt300;
	}
	
	@Override
	public NumberTicket_NumberTicketVO selectStandBy400(String location) {
		NumberTicket_NumberTicketVO nt400 = numberTicketDAO.selectStandBy400(location);
		return nt400;
	}
	
}
