package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.member.vo.TellerVO;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	//로그인과 관련된 기능으로 쓰고 싶음
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("preHandle()");
		
		// 로그파일 만들때 사용 - 로그4제이
		/*HandlerMethod method = (HandlerMethod)handler;
		System.out.println("메소드 : " + method);
		System.out.println("컨트롤러 : " + method.getBean());
		*/
		// 로그인 여부 체크 loginVO 유뮤 session에 있는 
		HttpSession session = request.getSession();
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		//TellerVO tellerVO = (TellerVO)session.getAttribute("tellerVO");
		//&& tellerVO == null
		if(loginVO == null) {
			
			String uri = request.getRequestURI();
			System.out.println(uri);
			uri = uri.substring(request.getContextPath().length());
			System.out.println(uri);
			
			//게시판 디테일에서 세부 사항 볼때 물음표 뒤에 꺼 보는 방식 
			String query = request.getQueryString();
			System.out.println(query);
			//?만 날리는 것도 && 뒤에 조건으로 제어
			if(query != null && query.length() != 0)
				uri = uri + "?" + query;
			
			session.setAttribute("dest", uri);
			
			response.sendRedirect(request.getContextPath() + "/login");
			
			return false;
		}
		
		return true;
	}
	
}
