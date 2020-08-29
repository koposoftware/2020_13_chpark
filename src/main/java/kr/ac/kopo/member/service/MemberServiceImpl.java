package kr.ac.kopo.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public MemberVO login(MemberVO member) {
		return memberDAO.login(member);
	}

	@Override
	public void signup(MemberVO member) {
		memberDAO.signup(member);
	}

	@Override
	public MemberVO selectMemberById(String id) {
		MemberVO member = memberDAO.selectById(id);
		return member;
	}

	@Override
	public void updateMypage(MemberVO member) {
		memberDAO.update(member);
	}

	
}
