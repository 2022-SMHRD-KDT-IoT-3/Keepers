package kr.smart.keepers;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smart.mapper.ValueMapper;
import kr.smart.mapper.ValueVO;

@Controller
public class ValueController {
	@Inject
	ValueMapper mapper;
	
	@RequestMapping("/insertValue.do")
	public void insertValue(HttpServletRequest request) { 
		System.out.println("==[센서값 입력 시작]==");
		
		String d_seq = request.getParameter("d_seq");
		String v_weight = request.getParameter("v_weight");
		
		ValueVO vo = new ValueVO("default", d_seq, v_weight, "default");
		
		mapper.insertValue(vo);
		
		System.out.println("==[센서값 입력 종료]==");
		
	}
	
}
