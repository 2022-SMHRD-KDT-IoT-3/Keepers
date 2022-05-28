package kr.smart.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainMapper {

	public ArrayList<BoardVO> boardLimit();

	public ArrayList<CareVO> careLimit(String c_manager_id);

}
