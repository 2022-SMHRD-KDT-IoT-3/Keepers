package kr.smart.keepers;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smart.mapper.MemberMapper;
import kr.smart.mapper.MemberVO;

@Controller
public class MemberController {

	@Inject
	private MemberMapper mapper;
	
	//로그인페이지 이동 메소드
		@RequestMapping("/login.do")
		public void login() {
			System.out.println("화남 ^^^^^");
		}
		
		//회원가입페이지 이동 메소드
		@RequestMapping("/join.do")
		public void join() {
		
		}
		
		//회원가입 요청 메소드
		@RequestMapping("/joinInsert.do")
		public String joinInsert(MemberVO vo) {
			
			mapper.joinInsert(vo);
			
			return "";
		}
		
		//로그인 요청 메소드
		@RequestMapping("/loginSelect.do")
		public String loginSelect(MemberVO vo, HttpSession session) {
			
			MemberVO info = mapper.loginSelect(vo);
			
			if(info != null) {
				session.setAttribute("info", info);
			}
			
			return "";
		}
		
		//로그아웃 메소드
		@RequestMapping("/logout.do")
		public String logout(HttpSession session) {
			
			session.removeAttribute("info");
			
			return "";
		}
		
		//회원정보수정 페이지 이동메소드
		@RequestMapping("/memberUpdatePage.do")
		public void memberUpdatePage() {
			
		}
		
		//회원정보수정 요청 메소드
		@RequestMapping("/memberUpdate.do")
		public String memberUpdate(MemberVO vo, HttpSession session) {
			
			mapper.memberUpdate(vo);
			session.setAttribute("info", vo);
			
			return "";
		}
}
