package kr.smart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ValueMapper {

	void insertValue(ValueVO vo);

	List<ValueVO> andSelectValue(ValueVO vo);

}
