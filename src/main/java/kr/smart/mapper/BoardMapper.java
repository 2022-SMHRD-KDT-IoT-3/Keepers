package kr.smart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface BoardMapper {

	public List<BoardVO> boardList();

	public void boardInsert(BoardVO vo);

	public BoardVO boardContents(int b_seq);

	public void boardUpdate(BoardVO vo);

	public void boardDelete(int b_seq);
}
