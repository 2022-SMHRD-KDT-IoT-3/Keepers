package kr.smart.keepers;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smart.mapper.CareVO;
import kr.smart.mapper.MonitoringMapper;

@Controller
public class MonitoringController {
	
	@Inject
	public MonitoringMapper mapper;
	
	//모니터링 페이지 이동
	@RequestMapping("/monitoring.do")
	public void monitoring() {
		
	}
	
	
	// 모니터링 정보 담기 메소드
	@RequestMapping("/monitoringData.do")
	public String careSelect(String c_manager_id, Model model) {
		
		System.out.println(c_manager_id);
		List<CareVO> list = mapper.monitorSelect(c_manager_id);
		model.addAttribute("list", list);
		System.out.println(list.size());
	
		return "";
	}
	
	//모니터링차트 조회
	@RequestMapping("/monitoringChart.do")
	public @ResponseBody String monitoringChart(String d_c_seq1, Model model) {
		
		return "";
	}
	
	
}
