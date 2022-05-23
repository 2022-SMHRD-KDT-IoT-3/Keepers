package kr.smart.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ValueMapper {

	void insertValue(ValueVO vo);

}
