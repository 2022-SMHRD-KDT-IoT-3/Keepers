package kr.smart.keepers;

import javax.inject.Inject;

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
}
