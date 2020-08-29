package kr.ac.kopo.numberTicket.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.numberTicket.vo.NumberTicket_LatLngVO;

@Repository
public class NumberTicketDAOImpl implements NumberTicketDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<NumberTicket_LatLngVO> selectLatLng() {
		List<NumberTicket_LatLngVO> LatLng = sqlSession.selectList("numberTicket.dao.NumberTicketDAO.selectLatLng");
		return LatLng;
	}

	
}
