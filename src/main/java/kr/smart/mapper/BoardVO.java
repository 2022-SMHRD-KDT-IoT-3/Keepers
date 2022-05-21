package kr.smart.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BoardVO {
	
	private int b_seq;
	private String b_title;
	private String b_content;
	private String b_id;
	private String b_signdate;

}
