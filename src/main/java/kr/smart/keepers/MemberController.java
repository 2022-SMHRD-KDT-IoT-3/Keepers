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
	public @ResponseBody void joinInsert(MemberVO vo) {
		System.out.println(vo.toString());
		System.out.println("회원가입 요청");

		mapper.joinInsert(vo);

	}

	// 아이디 중복확인 메소드
	@RequestMapping("/idCheck.do")
	public @ResponseBody MemberVO idCheck(String m_id) {
		System.out.println("아이디 중복체크");
		System.out.println(m_id);

		MemberVO vo = mapper.idCheck(m_id);

		return vo;
	}

	// 로그인 요청 메소드
	@RequestMapping("/loginSelect.do")
	public @ResponseBody String loginSelect(MemberVO vo, HttpSession session) {
		System.out.println("로그인 요청");
		System.out.println(vo.toString());
		MemberVO info = mapper.loginSelect(vo);

		if (info != null) {
			session.setAttribute("info", info);
			return "success";
		} else {
			return "fail";
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
	public @ResponseBody void memberUpdate(MemberVO vo, HttpSession session) {

		System.out.println("업데이트 : "+ vo.toString());
		mapper.memberUpdate(vo);
		session.setAttribute("info", vo);

	}

	// 안드로이드 로그인 요청 메소드
	@RequestMapping("/andLoginSelect.do")
	public @ResponseBody MemberVO andLoginSelect(MemberVO vo) {
		System.out.println("[안드로이드 로그인 요청]");
		MemberVO info = mapper.andLoginSelect(vo);
		return info;
	}
	
	// 안드로이드 내 정보 조회 요청 메소드
	@RequestMapping("/andMyInfoSelect.do")
	public @ResponseBody MemberVO andMyInfoSelect(MemberVO vo) {
		System.out.println("[안드로이드 내 정보 조회 요청]");
		MemberVO info = mapper.andMyInfoSelect(vo);
		System.out.println(info.toString());
		return info;
	}
	
	
}
