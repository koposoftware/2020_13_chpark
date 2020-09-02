package kr.ac.kopo.member.service;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.TellerVO;

public interface MemberService {

	MemberVO login(MemberVO member);
	
	void signup(MemberVO member);
	
	MemberVO selectMemberById(String id);
	
	void updateMypage(MemberVO member);

	TellerVO adminLogin(TellerVO teller);
}
