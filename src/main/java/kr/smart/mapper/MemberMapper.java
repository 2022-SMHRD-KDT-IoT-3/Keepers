package kr.smart.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	void joinInsert(MemberVO vo);

}
