package kr.smart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface CareMapper {

	public int careInsert(CareVO vo);

	public List<CareVO> careSelect(String c_manager_id);

	public void careUpdate(CareVO vo);

	public void careDelete(int c_seq);

	public void deviceInsert(int d_c_seq);
}
