package kr.ac.kopo.reply.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.reply.service.ReplyService;
import kr.ac.kopo.reply.vo.ReplyVO;

//컨테이너가 자동으로 라이프사이클 관리하는 객체로 들어감
// 포워드 없이 응답을 주는 것 리스판스 바디 역할을 하게 하는
@RestController
public class ReplyController {
	
	@Autowired
	private ReplyService replyService;
	
	@PostMapping("/reply")
	public void addReply(ReplyVO replyVO) {
		System.out.println(replyVO);
		replyService.insertReply(replyVO);
	}
	
	@GetMapping("/reply/{boardNo}")
	//@PathVariable URL 경로에 변수를 넣어주는 기능
	public List<ReplyVO> getList(@PathVariable("boardNo") int boardNo) {
		System.out.println("조회할 게시글 번호 : " + boardNo);
		
		List<ReplyVO> replyList = replyService.selectAllBoardNo(boardNo);
		
		return replyList;
	}
	//@RequestMapping(value="/reply/{replyNo}", method=RequestMethod.DELETE)
	@DeleteMapping("/reply/{replyNo}")
	public void deleteReply(@PathVariable("replyNo") int replyNo) {
		System.out.println("삭제할 댓글 번호 : " + replyNo);
		replyService.removeReply(replyNo);
	}
	
	@DeleteMapping("/reply/{replyNo}/{boardNo}")
	public void deleteReply(@PathVariable("replyNo") int replyNo, @PathVariable("boardNo") int boardNo) {
		System.out.println(replyNo + " : " + boardNo);
		System.out.println("!!!!!!");
		ReplyVO replyVO = new ReplyVO();
		replyVO.setNo(replyNo);
		replyVO.setBoardNo(boardNo);
		
		replyService.removeReply(replyNo);
		
	}
}
