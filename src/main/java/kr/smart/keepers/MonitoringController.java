package kr.smart.keepers;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.smart.mapper.CareVO;
import kr.smart.mapper.MonitoringMapper;
import kr.smart.mapper.ValueVO;

@Controller
public class MonitoringController {
	
	@Inject
	public MonitoringMapper mapper;
	
	
	// 모니터링 페이지이동 메소드
	@RequestMapping("/monitoring.do")
	public String careSelect(String c_manager_id, Model model) {
		
		System.out.println(c_manager_id);
		List<CareVO> list = mapper.monitorSelect(c_manager_id);
		model.addAttribute("list", list);
		if(list.size()== 0) {
			return "redirect:/careJoin.do";
		}else {
			return "monitoring";
		}
	
	}
	
	
	//모니터링차트 조회
	@RequestMapping("/monitoringChart.do")
	public @ResponseBody String monitoringChart(int d_c_seq) {
		Gson gson = new Gson();
		String[] array = new String[2];
		
		System.out.println("차트조회");
		
		System.out.println(d_c_seq);
		ArrayList<ValueVO> list = mapper.monitoringChart(d_c_seq);
		System.out.println(list.size());
		String result = "0";
		if(list.size()>0) {
		
			String chartValue = "" + list.get(0).getV_weight() ;
			String chartLabel = "" + list.get(0).getV_signdate() ;
			if(list.get(0).getV_weight() <0) {
				chartValue = "0.0";
			}
			for(int i = 1; i<list.size(); i++) {
				if(list.get(i).getV_weight() >= 0) {
					chartValue += "," + list.get(i).getV_weight();
					chartLabel += "," + list.get(i).getV_signdate();
				}
			}
			System.out.println(chartValue);
			System.out.println(chartLabel);
			
			array[0] = chartValue;
			array[1] = chartLabel;
			result = gson.toJson(array);
		}
		
		return result;
	}
	
	
	//모니터링 활동중 조회
	@RequestMapping("/monitoringAct.do")
	public @ResponseBody String monitoringAct(int d_c_seq) {
		System.out.println("활동중 체크");
		
		ArrayList<ValueVO> list = mapper.monitoringAct(d_c_seq);
		System.out.println(list.size());
		Gson gson = new Gson();
		String result = gson.toJson(list);
		
		return result;
	}
	
	
	//모니터링 사용자 정보 조회
	@RequestMapping("/monitorInfo.do")
	public @ResponseBody CareVO monitorInfo(int d_c_seq) {
		System.out.println("모니터링 사용자정보조회");
		
		CareVO vo = mapper.monitoringInfo(d_c_seq);
		
		return vo;
	}
	
	//안드로이드 모니터링 활동중 조회
	@RequestMapping("/andMonitoringAct.do")
	public @ResponseBody String andMonitoringAct(int d_c_seq) {
		System.out.println("[안드로이드 활동중 체크]");
		ArrayList<ValueVO> list = mapper.andMonitoringAct(d_c_seq);
		System.out.println("센서값 목록 크기 : " + list.size());
		Gson gson = new Gson();
		String result = gson.toJson(list);
		
		return result;
	}
	
	
	
	
	
	
	
}
