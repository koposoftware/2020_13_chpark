package kr.ac.kopo.numberTicket.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;
import kr.ac.kopo.numberTicket.vo.NumberTicket_NumberTicketVO;

@Repository
public class NumberTicketDAOImpl implements NumberTicketDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<NumberTicket_LatLngVO> selectLatLng() {
		List<NumberTicket_LatLngVO> LatLng = sqlSession.selectList("numberTicket.dao.NumberTicketDAO.selectLatLng");
		return LatLng;
	}

	@Override
	public List<NumberTicket_LatLngVO> selectList(String location) {
		List<NumberTicket_LatLngVO> BranchList = sqlSession.selectList("numberTicket.dao.NumberTicketDAO.selectBranchList", location);
		return BranchList;
	}

	@Override
	public NumberTicket_NumberTicketVO selectStandBy100(String location) {
		NumberTicket_NumberTicketVO nt100 = sqlSession.selectOne("numberTicket.dao.NumberTicketDAO.selectStandBy100", location);
		return nt100;
	}

	@Override
	public NumberTicket_NumberTicketVO selectStandBy200(String location) {
		NumberTicket_NumberTicketVO nt200 = sqlSession.selectOne("numberTicket.dao.NumberTicketDAO.selectStandBy200", location);
		return nt200;
	}
	
	@Override
	public NumberTicket_NumberTicketVO selectStandBy300(String location) {
		NumberTicket_NumberTicketVO nt300 = sqlSession.selectOne("numberTicket.dao.NumberTicketDAO.selectStandBy300", location);
		return nt300;
	}
	
	@Override
	public NumberTicket_NumberTicketVO selectStandBy400(String location) {
		NumberTicket_NumberTicketVO nt400 = sqlSession.selectOne("numberTicket.dao.NumberTicketDAO.selectStandBy400", location);
		return nt400;
	}

	@Override
	public NumberTicket_NumberTicketVO insertSelectNumberTicket(String locations, String service, HttpSession session) {
		MemberVO user = (MemberVO)session.getAttribute("loginVO");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("locations", locations);
		map.put("service", service);
		map.put("id", user.getId());
		map.put("name", user.getName());
		sqlSession.insert("numberTicket.dao.NumberTicketDAO.insertNumberTicket", map);
		NumberTicket_NumberTicketVO nt = sqlSession.selectOne("numberTicket.dao.NumberTicketDAO.selectNumberTicket", map);
		System.out.println(locations);
		System.out.println(nt);
		return nt;
	}

	@Override
	public String selectServiceName(String service_id) {
		String service_name = sqlSession.selectOne("numberTicket.dao.NumberTicketDAO.selectService", service_id);
		return service_name;
	}
	
	
}
