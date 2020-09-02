package kr.ac.kopo.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.TellerVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public MemberVO login(MemberVO member) {
		
		MemberVO loginVO = sqlSession.selectOne("member.dao.MemberDAO.login", member);
		
		System.out.println(member.toString());
		
		//System.out.println(loginVO.toString());
		
		return loginVO;
	}

	@Override
	public void signup(MemberVO member) {
		
		sqlSession.insert("member.dao.MemberDAO.signup", member);
		
	}

	@Override
	public MemberVO selectById(String id) {
		MemberVO member = sqlSession.selectOne("member.dao.MemberDAO.selectById", id);
		return member;
	}

	@Override
	public void update(MemberVO member) {
		sqlSession.update("member.dao.MemberDAO.update", member);
	}

	@Override
	public TellerVO adminLogin(TellerVO teller) {

		return sqlSession.selectOne("member.dao.MemberDAO.adminLogin",teller);
	}
	
	
	
}
