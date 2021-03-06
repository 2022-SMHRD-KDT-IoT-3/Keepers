package kr.smart.mapper;

import java.io.FileInputStream;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.messaging.AndroidConfig;
import com.google.firebase.messaging.AndroidNotification;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.Message;

@Component
public class FcmUtil {
	
	 @Value("${app.firebase-configuration-file}")
	 
	public void send_FCM(String tokenId, String title, String content) {
		String c_name = new PushDAO().sendPush();
		
		try {
			//json파일경로
			FileInputStream refreshToken = new FileInputStream("C:\\Users\\smhrd\\git\\Keepers\\src\\main\\webapp\\resources\\keepers-ff906-firebase-adminsdk-msucq-4b9cf61c5b.json");
			
			FirebaseOptions options = new FirebaseOptions.Builder()
					.setCredentials(GoogleCredentials.fromStream(refreshToken))
					.setDatabaseUrl("firebase-adminsdk-msucq@keepers-ff906.iam.gserviceaccount.com")
					.build();
			
			//firebase처음 호출시 initializing처리
			if(FirebaseApp.getApps().isEmpty()) {
				FirebaseApp.initializeApp(options);
			}
			//안드로이드 토큰
			String registrationToken = "faWfui3hTSSSrxLqhVpRzU:APA91bEB5JfqX5KL0biFRjTcn2DQ15jjoChQE-NrdB_ZlZZk0GG67ROzaxcjIp8MFZlx4Q3nHL4EljqUQNY2XFNiuWzmIXHG0SeRlLSY011fbfhlN5eGZdyn_yhc0n0WzjiEsmJ9d5-J";
			// f3fFFBm8TiyEVvHtWe-Nks:APA91bHFLLpIDKJfOfVUyS_7MToELXGbXqSWmNKeKA7aqUisN87Tbz-TfEJEqYgzoMNjOW1WQ7LVHh7nOYH6BIN54zOA5VnfG0ToComn0HtEyGbXXayXY94MfeC3DQaqPx6LqUitzhLI
			//message 작성
			Message msg = Message.builder()
					.setAndroidConfig(AndroidConfig.builder()
							.setTtl(3600*1000) //1 hour in milliseconds
							.setPriority(AndroidConfig.Priority.NORMAL)
							.setNotification(AndroidNotification.builder()
									.setTitle("Keepers")
									.setBody(c_name+"님의 무반응상태가 12시간이 경과되었습니다.\n연락이나 방문 등 긴급한 확인이 요구됩니다.")
									.setColor("#ff9614")
									.build())
							.build())
					.setToken(registrationToken)
					.build();
			
			//메시지를 FirebaseMessaging에 보내기
			String response = FirebaseMessaging.getInstance().send(msg);
			
			//결과 출력
			System.out.println("Successfully sent message : " + response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
