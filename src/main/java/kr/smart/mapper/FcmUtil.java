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
			String registrationToken = "c0A4VUtVT_KNc-1OL0ook4:APA91bEWsHIzeYdB4h7DNHJV7D4E3c0j5Bq7qL0fDwlkgRZ2whgkUp27t78kNhVs9sWumREdNbFTz5pVvCBvskyKW_MTz6gq0lu3VPzQ7bLKcl6UvAk0wJ_ZTCraI_hlgeveFO4CjOzA";
			// f3fFFBm8TiyEVvHtWe-Nks:APA91bHFLLpIDKJfOfVUyS_7MToELXGbXqSWmNKeKA7aqUisN87Tbz-TfEJEqYgzoMNjOW1WQ7LVHh7nOYH6BIN54zOA5VnfG0ToComn0HtEyGbXXayXY94MfeC3DQaqPx6LqUitzhLI
			//message 작성
			Message msg = Message.builder()
					.setAndroidConfig(AndroidConfig.builder()
							.setTtl(3600*1000) //1 hour in milliseconds
							.setPriority(AndroidConfig.Priority.NORMAL)
							.setNotification(AndroidNotification.builder()
									.setTitle("Keepers")
									.setBody(c_name+"님의 무반응상태가 12시간이 경과되었습니다.\n연락이나 방문 등 긴급한 확인이 요구됩니다.")
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
