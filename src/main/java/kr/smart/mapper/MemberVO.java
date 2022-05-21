package kr.smart.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemberVO {
	
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_phone;
	private String m_email;
	private String m_department;
	private char m_type;
	private String m_joindate;
	

}
