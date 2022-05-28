package kr.smart.keepers;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public void careUpdatePage(int c_seq, Model model) {
	
		CareVO vo = mapper.careLoad(c_seq);
		model.addAttribute("vo", vo);
		System.out.println(vo.toString());
		
	}
	
	
	//사용자 정보수정 요청
	@RequestMapping("/careUpdate.do")
	public String careUpdate(CareVO vo) {
		
		System.out.println(vo.toString());
		mapper.careUpdate(vo);
		String c_manager_id = vo.getC_manager_id();
		
		return "redirect:/careSelect.do?c_manager_id="+c_manager_id;
	}
	
	//사용자 삭제 요청
	@RequestMapping("/careDelete.do")
	public String careDelete(int c_seq) {
		
		mapper.careDelete(c_seq);
		
		return "";
	}
	
    @RequestMapping("/andCareInsert.do")
    public @ResponseBody void andLogin(CareVO vo) {
       // 안드로이드에서 로그인 요청시 로그인에 성공하게 되면
       // MemberVO를 JSON형태로 변환해서 돌려주는 메소드
       
       System.out.println("andCareReg");
       mapper.CareInsert(vo);
       
    }
    
    @RequestMapping("/careList.do")
    public @ResponseBody List<CareVO> careList(CareVO vo) {
    System.out.println("[관리대상 리스트 요청] ");
    List<CareVO> list = mapper.careList(vo);
    return list;
//    for(int i =0; i<list.size(); i++) {
//    System.out.println(list.get(i).toString());
//    }
//    String json = new Gson().toJson(list);
//    System.out.println("제이슨 결과2 = " + json);
    }

	
}
