package kr.smart.keepers;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smart.mapper.CareMapper;
import kr.smart.mapper.CareVO;
import kr.smart.mapper.FcmUtil;


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
		System.out.println("사용자등록 : "+vo.toString());
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
		
		System.out.println("c_manager_id:" +c_manager_id);
		List<CareVO> list = mapper.careSelect(c_manager_id);
		model.addAttribute("list", list);
		System.out.println(list.size());
	}
	
	//선택한 사용자 정보 보기 메소드
	@RequestMapping("/selectAny.do")
	public @ResponseBody CareVO selectAny(int c_seq) {
		CareVO vo = mapper.selectAny(c_seq);
		
		return vo;
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
		
		System.out.println("업데이트 : " + vo.toString());
		
		mapper.careUpdate(vo);
		String c_manager_id = vo.getC_manager_id();
		
		return "redirect:/careSelect.do?c_manager_id="+c_manager_id;
	}
	
	//사용자 삭제 요청
	@RequestMapping("/careDelete.do")
	public String careDelete(int c_seq, String c_manager_id) {
		mapper.careDelete(c_seq);
		
		return "redirect:/careSelect.do?c_manager_id="+c_manager_id;
	}
	
    // 안드로이드 사용자 등록 요청
    @RequestMapping("/andCareInsert.do")
    public @ResponseBody String andCareInsert(CareVO vo) {
            
            System.out.println("안드로이드 사용자 등록 요청");
            System.out.println(vo.toString());
            if (vo.getC_name() != "") {
                    mapper.andCareInsert(vo);
                    System.out.println("안드로이드 사용자 등록 성공");
                    return "success";
            } else {
                    System.out.println("안드로이드 사용자 등록 실패");
                    return "fail";
            }
            
            
    }

	// 안드로이드 사용자 리스트 요청
	@RequestMapping("/andCareList.do")
	public @ResponseBody List<CareVO> careList(CareVO vo) {
	System.out.println("[안드로이드 사용자 리스트 요청] ");
	List<CareVO> list = mapper.andCareList(vo);
	return list;
	}
	
	//푸쉬알림 전송
	@RequestMapping("/fcm.do")
	public @ResponseBody String fcmtest(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception{
		
		String tokenId="ss";
		String title="제목";
		String content="내용";
		
		FcmUtil FcmUtil = new FcmUtil();
		FcmUtil.send_FCM(tokenId, title, content);
		
		return "test";
	}

	
}
