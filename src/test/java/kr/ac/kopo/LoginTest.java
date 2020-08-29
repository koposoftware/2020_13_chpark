package kr.ac.kopo;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/*.xml"})
public class LoginTest {

	@Autowired
	private SqlSessionTemplate session;
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Test
	public void login테스트() throws Exception {
		MemberVO member = new MemberVO();
		member.setId("pch01");
		member.setPwd("qwerty");
		
//		MemberVO loginVO = session.selectOne("member.dao.MemberDAO.login", member);
		MemberVO loginVO = memberDAO.login(member);
		
	}
}
