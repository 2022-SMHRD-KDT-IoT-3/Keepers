package kr.smart.keepers;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smart.mapper.CareMapper;
import kr.smart.mapper.CareVO;


@Controller
public class CareController {

	@Inject
	private CareMapper mapper;
	
	//사용자등록페이지 이동
	@RequestMapping("/careJoin.do")
	public void careJoin() {
		
	}

	//사용자등록 요청 메소드
	@RequestMapping("/careInsert.do")
	public String careInsert(CareVO vo) {
		System.out.println("사용자등록");
		System.out.println(vo.toString());
		int care_id = mapper.careInsert(vo);
		
		System.out.println(care_id);
		
		return "redirect:/deviceInsert.do?care_id="+care_id;
	}
	
	//사용자 등록시 제품번호 생성 메소드
	@RequestMapping("/deviceInsert.do")
	public String deviceInsert(String care_id) {
		
		System.out.println(care_id);
		int d_c_seq= Integer.parseInt(care_id);
		System.out.println(d_c_seq);
		mapper.deviceInsert(d_c_seq);
		
		return "redirect:/main.do";
	}
	
	//사용자 전체 조회 메소드
	@RequestMapping("/careSelect.do")
	public void careSelect(String c_manager_id, Model model) {
		
		System.out.println(c_manager_id);
		List<CareVO> list = mapper.careSelect(c_manager_id);
		model.addAttribute("list", list);
		System.out.println(list.size());
	}
	
	//사용자 정보수정 페이지 이동
	@RequestMapping("/careUpdatePage.do")
	public void careUpdatePage() {
		
	}
	
	//사용자 정보수정 요청
	@RequestMapping("/careUpdate.do")
	public String careUpdate(CareVO vo) {
		
		mapper.careUpdate(vo);
		
		return "";
	}
	
	//사용자 삭제 요청
	@RequestMapping("/careDelete.do")
	public String careDelete(int c_seq) {
		
		mapper.careDelete(c_seq);
		
		return "";
	}
}
