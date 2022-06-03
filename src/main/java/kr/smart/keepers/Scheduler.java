package kr.smart.keepers;

import java.util.ArrayList;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import kr.smart.mapper.FcmUtil;
import kr.smart.mapper.PushDAO;

@Component
public class Scheduler {
	String start = "";
	String end = "";
	int cnt = 0;
	
	//테스트
	@Scheduled(cron = "0 35 16 * * *")
	public void test() {
		System.out.println("스케쥴러 호출");
		start = "12:01:00";
		end = "17:59:59";
		ArrayList<Double> result = new PushDAO().check1(start, end);
		System.out.println(result.get(0));
		for(int i =0; i<result.size(); i++) {
			if(result.get(i)>10) {
				break;
			}else {
				String tokenId="TokenId";
				String title="title";
				String content="content";
				
				FcmUtil FcmUtil = new FcmUtil();
				FcmUtil.send_FCM(tokenId, title, content);
			}
		}
		
	}
	
	@Scheduled(cron = "0 0 6 * * *")
	public void autoCheck1() {
		start = "00:01:00";
		end = "05:59:00";
		ArrayList<Double> result = new PushDAO().check1(start, end);
		System.out.println(result.get(0));
		for(int i =0; i<result.size(); i++) {
			if(result.get(i)>10) {
				cnt = 0;
				break;
			}else {
				cnt++;
			}
		}
	}
	
	@Scheduled(cron = "0 0 12 * * *")
	public void autoCheck2() {
		start = "06:01:00";
		end = "11:59:59";
		ArrayList<Double> result = new PushDAO().check1(start, end);
		System.out.println(result.get(0));
		for(int i =0; i<result.size(); i++) {
			if(result.get(i)>10) {
				cnt = 0;
				break;
			}else {
				cnt++;
				if(cnt == 2) {
					String tokenId="TokenId";
					String title="title";
					String content="content";
					
					FcmUtil FcmUtil = new FcmUtil();
					FcmUtil.send_FCM(tokenId, title, content);
					
					cnt = 0;
				}
			}
		}
	}
	
	@Scheduled(cron = "0 0 18 * * *")
	public void autoCheck3() {
		start = "12:01:00";
		end = "17:59:59";
		ArrayList<Double> result = new PushDAO().check1(start, end);
		System.out.println(result.get(0));
		for(int i =0; i<result.size(); i++) {
			if(result.get(i)>10) {
				cnt = 0;
				break;
			}else {
				cnt++;
				if(cnt == 2) {
					String tokenId="TokenId";
					String title="title";
					String content="content";
					
					FcmUtil FcmUtil = new FcmUtil();
					FcmUtil.send_FCM(tokenId, title, content);
					
					cnt = 0;
				}
			}
		}
	}
	
	@Scheduled(cron = "1 0 0 * * *")
	public void autoCheck4() {
		start = "18:01:00";
		end = "23:59:59";
		ArrayList<Double> result = new PushDAO().check1(start, end);
		System.out.println(result.get(0));
		for(int i =0; i<result.size(); i++) {
			if(result.get(i)>10) {
				cnt = 0;
				break;
			}else {
				cnt++;
				if(cnt == 2) {
					String tokenId="TokenId";
					String title="title";
					String content="content";
					
					FcmUtil FcmUtil = new FcmUtil();
					FcmUtil.send_FCM(tokenId, title, content);
					
					cnt = 0;
				}
			}
		}
	}
}
