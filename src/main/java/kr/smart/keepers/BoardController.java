package kr.smart.keepers;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smart.mapper.BoardMapper;
import kr.smart.mapper.BoardVO;


@Controller
public class BoardController {
	
	@Inject
	private BoardMapper mapper;
	
	//게시판 전체보기(게시판 페이지 이동)
	@RequestMapping("/boardList.do")
	public void boardList(Model model) {
		
		List<BoardVO> list = mapper.boardList();
		model.addAttribute("list", list);
		
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
	@RequestMapping("/boardSelect.do")
	public void boardSelect(int b_seq, Model model) {
		System.out.println(b_seq);
		BoardVO vo = mapper.boardSelect(b_seq);
		System.out.println(vo.toString());
		model.addAttribute("vo", vo);
		
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
	
	// 안드로이드 게시판 목록 조회
	@RequestMapping("/andBoardList.do")
	public @ResponseBody List<BoardVO> andBoardList() {
	System.out.println("[안드로이드 게시판 목록 조회] ");
	List<BoardVO> list = mapper.andBoardList();
	return list;
	}
	
	// 안드로이드 게시판 게시글 선택
	@RequestMapping("/andBoardSelect.do")
	public @ResponseBody List<BoardVO> andBoardSelect(BoardVO vo) {
	System.out.println("[안드로이드 게시글 선택] ");
	List<BoardVO> list = mapper.andBoardSelect(vo);
	return list;
	}
		
}
