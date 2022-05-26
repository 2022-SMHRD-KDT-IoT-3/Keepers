package kr.smart.mapper;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ValueVO {
	private String v_seq ;
	private String d_seq ;
	private String v_weight ;
	private String v_signdate ;
	
	//제품테이블(k_device)
	// int d_seq 중복
	private int d_c_seq; //제품 사용자 번호
	private String d_signdate; //제품 등록일자
	
	//센서값생성자
	public ValueVO(String v_seq, String d_seq, String v_weight, String v_signdate) {
		super();
		this.v_seq = v_seq;
		this.d_seq = d_seq;
		this.v_weight = v_weight;
		this.v_signdate = v_signdate;
	}

	//제품 생성자
	public ValueVO(String d_seq, int d_c_seq, String d_signdate) {
		super();
		this.d_seq = d_seq;
		this.d_c_seq = d_c_seq;
		this.d_signdate = d_signdate;
	}
}
