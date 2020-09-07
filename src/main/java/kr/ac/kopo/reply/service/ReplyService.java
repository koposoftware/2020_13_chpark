package kr.ac.kopo.reply.service;

import java.util.List;

import kr.ac.kopo.reply.vo.ReplyVO;

/**
 * 댓글 crud 
 * @author cheon
 *
 */
public interface ReplyService {
	
	/**
	 * 댓글등록
	 * @param replyVO
	 */
	void insertReply(ReplyVO replyVO);
	
	/**
	 * 댓글 조회 리스트
	 * @param boardNo
	 */
	List<ReplyVO> selectAllBoardNo(int boardNo);
	
	
	/**
	 * 
	 */
	void removeReply(int replyNo);
	void removeReply(ReplyVO replyVO);
}
