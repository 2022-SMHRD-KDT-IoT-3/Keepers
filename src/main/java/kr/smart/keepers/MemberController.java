package kr.smart.keepers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	@RequestMapping("/")
	public String a() {
		
		return "";
	}
}
