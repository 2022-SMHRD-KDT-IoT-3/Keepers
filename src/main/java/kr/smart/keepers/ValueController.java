package kr.smart.keepers;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		float v_weight = 0;
		if(request.getParameter("v_weight") != null) {
			v_weight = Float.parseFloat(request.getParameter("v_weight"));
		}
		String v_bat = request.getParameter("v_bat");

		ValueVO vo = new ValueVO("default", d_seq, v_weight, "default", v_bat);
		System.out.println(vo.toString());
		// mapper.insertValue(vo);

		System.out.println("==[센서값 입력 종료]==");

	}

// 안드로이드 센서 데이터 요청
	@RequestMapping("/andSelectValue.do")
	public @ResponseBody List<ValueVO> selectValue(ValueVO vo) {
		System.out.println("[안드로이드 센서 데이터 요청] ");
		List<ValueVO> list = mapper.andSelectValue(vo);
		return list;

	}

}
