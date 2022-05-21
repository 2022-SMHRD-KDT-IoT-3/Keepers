package kr.smart.keepers;

import javax.inject.Inject;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smart.mapper.ValueMapper;

@Controller
public class ValueController {
	@Inject
	ValueMapper mapper;
	
	@RequestMapping("/insertValue.do")
	public void insertValue(HttpRequest request) {
		System.out.println("==[센서값 입력 시작]==");
		
		///mapper.insertValue()
		
		System.out.println("==[센서값 입력 종료]==");
		
	}
	
}
