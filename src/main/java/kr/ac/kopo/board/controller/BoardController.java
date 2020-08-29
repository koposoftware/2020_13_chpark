package kr.ac.kopo.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.board.service.BoardService;
import kr.ac.kopo.board.vo.BoardVO;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;

	@RequestMapping("/board")
	public ModelAndView list() {
		//디비에서 데이터 가져오기
		//list.jsp로 포워드
		
		List<BoardVO> boardList = boardService.selectAllBoard();
		
		ModelAndView mav = new ModelAndView("board/list");
		mav.addObject("boardList", boardList);
		
		return mav;
	}
	
	//세부 게시글을 조회하는 기능 ( 신 url)
	//http://localhost:9999/Mission-Spring/board/3
	@RequestMapping("/board/{no}")//{받으려는 값}을 통해 변수를 받을 수 있다.
	public ModelAndView detailList(@PathVariable("no") int boardNo) {
	
	BoardVO board = boardService.selectBoardByNo(boardNo);	
		
	//System.out.println("boardNo : " + boardNo);
	ModelAndView mav = new ModelAndView("board/detail");
	mav.addObject("board", board);      
	return mav;
	}

	//
	
	/*
//	http://localhost:9999/Mission-Spring/board/detail?no=12
	@RequestMapping("/board/detail")
	//public ModelAndView detail(HttpServletRequest request) {
	public ModelAndView detail(@RequestParam("no") int boardNo) {
	
		
		//int boardNo = Integer.parseInt(request.getParameter("no"));
		System.out.println("boardNo : " + boardNo);
		
		ModelAndView mav = new ModelAndView("board/detail");
		return mav;
	}
	*/
	
	@GetMapping("/board/write")
	public String writeForm(Model model, HttpSession session) {
		
		BoardVO board = new BoardVO();
		//board.setTitle("hello");
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		if (loginVO != null)
		board.setWriter(loginVO.getId());	
		
		
		//model객체는 공유영역에 등록할 객체만 가지고 있는것
		model.addAttribute("boardVO", board);
		//리턴 보이드로 하고 두면 반환? 하는 주소는 겟맵핑하는 주소.jsp로  
		return "board/write";
	}
	
	@PostMapping("/board/write")
	public String write(@Valid BoardVO boardVO, BindingResult result) {
		//컨트롤러에서 날라오는 정보를 받음 하지만 널인 애들도 입력이 됨 -> 그럼 결국 db 제약조건에 걸려서 문제가 생김 -> 백엔드의 밸리데이션체크 스프링 폼태그로
		System.out.println(boardVO);
		System.out.println("result : " +  result.hasErrors());
		if(result.hasErrors()) {
			System.out.println("오류발생");
			return "board/write";
		}
		boardService.insertPost(boardVO);
		return "redirect:/board";
	}
}
