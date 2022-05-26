package kr.smart.keepers;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smart.mapper.BoardMapper;
import kr.smart.mapper.BoardVO;


@Controller
public class BoardController {
	
	@Inject
	private BoardMapper mapper;
	
	//게시판 전체보기(게시판 페이지 이동)
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		
		List<BoardVO> list = mapper.boardList();
		model.addAttribute("list", list);
		
		return "";
	}
	
	// 게시글쓰기 페이지 이동
	@RequestMapping("/boardInsertForm.do")
	public void boardInsertForm() {
		
	}
	
	// 게시글쓰기 요청
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		
		mapper.boardInsert(vo);
		
		return "redirect:/boardList.do";
	}
	
	// 게시글 상세보기
	@RequestMapping("/boardContents.do")
	public String boardContents(int b_seq, Model model) {
		
		BoardVO vo = mapper.boardContents(b_seq);
		model.addAttribute("vo", vo);
		
		return "";
	}
	
	// 게시글 수정하기
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		
		mapper.boardUpdate(vo);
		
		return "redirect:/boardList.do";
	}
	
	// 게시글 삭제하기
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int b_seq) {
		
		mapper.boardDelete(b_seq);
		
		return "redirect:/boardList.do";
	}
		
}
