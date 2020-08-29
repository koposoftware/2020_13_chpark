package kr.ac.kopo;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.board.vo.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class MyBatisTest {
	
	@Autowired
	private DataSource ds;
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	@Test
	public void ds테스트() throws Exception {
		assertNotNull(ds);
		//assertNull(ds); - > ds값이 널이지? 라고 물어보고 널이아니면 빨간색 
		//System.out.println(ds);
	}
	
	@Ignore
	@Test
	public void sqlSession테스트() throws Exception {
		assertNotNull(session);
	}
	@Ignore
	@Test
	public void 전체게시글조회테스트() throws Exception {
		List<BoardVO> list = session.selectList("board.dao.BoardDAO.selectAll");
		
		for(BoardVO board : list) {
			System.out.println(board);
		}
	}
}


