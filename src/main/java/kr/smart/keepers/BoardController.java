package kr.smart.keepers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	
	
	//게시판 전체보기
	@RequestMapping("/boardList.do")
	public String boardList() {
		System.out.println("d");
		return "";
	}
}
