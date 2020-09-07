package kr.ac.kopo.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.board.vo.BoardVO;

/**
 * impl = implements
 * @author cheon
 *
 */
//디비에 관련된 애들은 어노테이션으로 @Repository 많이씀
@Repository
//커넥션 객체 필요없고 마이바티스로 함
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<BoardVO> selectAll() {
		
		List<BoardVO> boardList = sqlSession.selectList("board.dao.BoardDAO.selectAll");
		
		return boardList;
	}

	@Override
	public void insert(BoardVO board) {
		
		sqlSession.insert("board.dao.BoardDAO.insert", board);
		
	}

	@Override
	public BoardVO selectByNo(int no) {
		
		BoardVO board = sqlSession.selectOne("board.dao.BoardDAO.selectByNo", no);
		
		return board;
	}

	@Override
	public void incrementReplyCnt(int no) {
		sqlSession.update("board.dao.BoardDAO.incrementReplyCnt", no);
	}

	@Override
	public void reduceReplyCnt(int no) {
		sqlSession.update("board.dao.BoardDAO.reduceReplyCnt", no);
	}
}
