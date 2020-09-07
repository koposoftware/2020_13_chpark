package kr.ac.kopo.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.board.dao.BoardDAO;
import kr.ac.kopo.reply.dao.ReplyDAO;
import kr.ac.kopo.reply.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	private ReplyDAO replyDao;
	@Autowired
	private BoardDAO boardDao;
	/**
	 * 댓글추가
	 * 1.dbc에 t_board에 해당 레코드의 댓글 카운트 컬럼값 1증가
	 * 2.dbc에 t_reply에 새로운 댓글 추가
	 */
	@Transactional
	@Override
	public void insertReply(ReplyVO replyVO) {
		//위에는 실행
		boardDao.incrementReplyCnt(replyVO.getBoardNo());
		// 여기서 에러나면
		// 이 두개의 메소드는 한사이클로 움직여야함 -> 트랜잭션 필요
		replyDao.insert(replyVO);
	}

	@Override
	public List<ReplyVO> selectAllBoardNo(int boardNo) {

		List<ReplyVO> replyList = replyDao.selectAll(boardNo);
		
		return replyList;
	}
	
	/**
	 * 0.db에서 삭제할 댓글의 게시물 번호 조회(t_reply) select board_no from t_reply where no = #{no} -> ajax에서 param으로 가져옴
	 * 1.db에서 해당 댓글 삭제(t_reply)
	 * 2.db에서 해당 게시물의 댓글 카운트 감소(t_board)
	 */
	@Transactional
	@Override
	public void removeReply(int replyNo) {
		int boardNo = replyDao.selectBoardNo(replyNo);
		replyDao.delete(replyNo);
		boardDao.reduceReplyCnt(boardNo);
		
	}

	/**
	 *  1.db에서 해당 댓글 삭제(t_reply)
	 *  2.db에서 해당 게시물의 댓글 카운트 감소(t_board)
	 */
	@Override
	public void removeReply(ReplyVO replyVO) {
		replyDao.delete(replyVO.getNo());
		boardDao.reduceReplyCnt(replyVO.getBoardNo());
	}

	
	
	
}
