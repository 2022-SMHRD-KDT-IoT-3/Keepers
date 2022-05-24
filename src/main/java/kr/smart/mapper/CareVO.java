package kr.smart.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CareVO {

	private int c_seq; //사용자번호
	private String c_manager_id; //사용자 관리자 아이디
	private String c_name; //사용자 이름
	private String c_birth; //사용자 생년월일
	private String c_phone; //사용자 전화번호
	private String c_address; //사용자 주소
	private String c_memo; //사용자 메모
	private String c_joindate; //사용자 가입일자
}
