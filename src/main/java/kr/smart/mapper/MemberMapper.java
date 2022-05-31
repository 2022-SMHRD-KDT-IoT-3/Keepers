package kr.smart.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	public void joinInsert(MemberVO vo);

	public MemberVO loginSelect(MemberVO vo);

	public void memberUpdate(MemberVO vo);

	public MemberVO idCheck(String m_id);

	public MemberVO andloginSelect(MemberVO vo);

}
