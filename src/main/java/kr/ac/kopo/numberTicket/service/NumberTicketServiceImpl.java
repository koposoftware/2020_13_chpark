package kr.ac.kopo.numberTicket.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.numberTicket.dao.NumberTicketDAO;
import kr.ac.kopo.numberTicket.vo.AdminTicketVO;
import kr.ac.kopo.numberTicket.vo.AnalysisVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;
import kr.ac.kopo.numberTicket.vo.ServiceDescVO;
import kr.ac.kopo.numberTicket.vo.UserTicketVO;

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
	
	@Override
	public NumberTicket_NumberTicketVO insertSelectNumberTicket(String locations, String service, HttpSession session) {
		//numberTicketDAO.insertNumberTicket(locations, service, session);
		NumberTicket_NumberTicketVO nt = numberTicketDAO.insertSelectNumberTicket(locations, service, session);
		String service_name = numberTicketDAO.selectServiceName(nt.getService_id());
		nt.setService_name(service_name);
		return nt;
	}
	
	@Override
	public List<ServiceDescVO> selectListServiceDesc() {
		return numberTicketDAO.selectListServiceDesc();
	}

	@Override
	public List<UserTicketVO> userTicket(String id) {
		return numberTicketDAO.userTicket(id);
	}

	@Override
	public List<AdminTicketVO> adminTicket(String tellerId) {
		return numberTicketDAO.adminTicket(tellerId);
	}
	
	@Override
	public List<AdminTicketVO> adminTicket100(String tellerId) {
		return numberTicketDAO.adminTicket100(tellerId);
	}
	@Override
	public List<AdminTicketVO> adminTicket200(String tellerId) {
		return numberTicketDAO.adminTicket200(tellerId);
	}
	@Override
	public List<AdminTicketVO> adminTicket300(String tellerId) {
		return numberTicketDAO.adminTicket300(tellerId);
	}
	@Override
	public List<AdminTicketVO> adminTicket400(String tellerId) {
		return numberTicketDAO.adminTicket400(tellerId);
	}

	@Override
	public int adminTicketUpdate(NumberTicket_NumberTicketVO vo) {
		return numberTicketDAO.adminTicketUpdate(vo);
	}

	@Override
	public NumberTicket_NumberTicketVO selectTicket(NumberTicket_NumberTicketVO vo) {
		return numberTicketDAO.selectTicket(vo);
	}

	@Override
	public void insertAnalysis(AnalysisVO analysisvo) {
		numberTicketDAO.insertAnalysis(analysisvo);
	}

	@Override
	public void deleteTicket(NumberTicket_NumberTicketVO vo) {
		numberTicketDAO.deleteTicket(vo);
	}

	@Override
	public List<AnalysisVO> selectAnalysis(String tellerId) {
		return numberTicketDAO.selectAnalysis(tellerId);
	}
	
	
	
//	@Override
//	public NumberTicket_NumberTicketVO selectNumberticket(String locations, String service, HttpSession session) {
//		NumberTicket_NumberTicketVO nt = numberTicketDAO.selectNumberTicket(locations, service, session);
//		return nt;
//	}
	
}
