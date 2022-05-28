package kr.smart.keepers;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smart.mapper.MemberMapper;
import kr.smart.mapper.MemberVO;

@Controller
public class MemberController {

	@Inject
	private MemberMapper mapper;


	// 로그인페이지 이동 메소드
	@RequestMapping("/login.do")
	public void login() {
		
	}

	// 회원가입페이지 이동 메소드
	@RequestMapping("/join.do")
	public void join() {

	}

	// 회원가입 요청 메소드
	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo) {
		System.out.println(vo.toString());
		System.out.println("회원가입 요청");
		
		mapper.joinInsert(vo);

		return "redirect:/login.do";
	}
	
	//아이디 중복확인 메소드
	@RequestMapping("/idCheck.do")
	public @ResponseBody MemberVO idCheck(String m_id) {
		System.out.println("아이디 중복체크");
		System.out.println(m_id);
		
		MemberVO vo = mapper.idCheck(m_id);
		
		return vo;
	}

	// 로그인 요청 메소드
	@RequestMapping("/loginSelect.do")
	public String loginSelect(MemberVO vo, HttpSession session) {
		System.out.println("로그인 요청");
		System.out.println(vo.toString());
		MemberVO info = mapper.loginSelect(vo);

		if (info != null) {
			session.setAttribute("info", info);
			
			return "redirect:/main.do";
		}else {
			return "redirect:/login.do";
		}

		
	}

	// 로그아웃 메소드
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		
		session.removeAttribute("info");

		return "redirect:/login.do";
	}

	// 회원정보수정 페이지 이동메소드
	@RequestMapping("/memberUpdatePage.do")
	public void memberUpdatePage() {

	}

	// 회원정보수정 요청 메소드
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo, HttpSession session) {

		mapper.memberUpdate(vo);
		session.setAttribute("info", vo);

		return "";
	}
	
	// 안드로이드 로그인 요청 메소드
    @RequestMapping("/andLogin.do")
    public @ResponseBody MemberVO andLogin(MemberVO vo) {
       // 안드로이드에서 로그인 요청시 로그인에 성공하게 되면
       // MemberVO를 JSON형태로 변환해서 돌려주는 메소드
       
       MemberVO info = mapper.loginSelect(vo);
       return info;
       
    }
}
