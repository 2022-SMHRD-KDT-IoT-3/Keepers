package kr.smart.keepers;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.smart.mapper.BoardVO;
import kr.smart.mapper.CareVO;
import kr.smart.mapper.MainMapper;
import kr.smart.mapper.ValueVO;

@Controller
public class MainController {

	@Inject
	public MainMapper mapper;

	// 메인페이지
	@RequestMapping("/main.do")
	public void main() {
		System.out.println("메인화면 접속");

	}

	// 공지사항
	@RequestMapping("/boardLimit.do")
	public @ResponseBody ArrayList<BoardVO> boardLimit() {
		System.out.println("공지사항limit");

		ArrayList<BoardVO> list = mapper.boardLimit();
		System.out.println(list.get(0).getB_id());

		return list;
	}

	// 사용자조회
	@RequestMapping("/careLimit.do")
	public @ResponseBody ArrayList<CareVO> careLimit(String c_manager_id) {
		System.out.println("사용자조회limit");
		ArrayList<CareVO> list = mapper.careLimit(c_manager_id);

		return list;
	}

	// 시연 페이지
	@RequestMapping("/Test.do")
	public void Test(Model model) {
		System.out.println("[테스트 페이지]");
		ArrayList<ValueVO> list = mapper.test();
		model.addAttribute("list", list);
	}

}
