package kr.ac.kopo.member.dao;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.TellerVO;

public interface MemberDAO {

	public MemberVO login(MemberVO member);
	
	public void signup(MemberVO member);
	
	public MemberVO selectById(String id);
	
	public void update(MemberVO member);

	public TellerVO adminLogin(TellerVO teller);
}
