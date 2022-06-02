package kr.smart.mapper;

import java.io.FileInputStream;

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
	public void send_FCM(String tokenId, String title, String content) {
		String c_name = new PushDAO().sendPush();
		
		try {
			//json파일경로
			FileInputStream refreshToken = new FileInputStream("C:\\Users\\smhrd\\git\\Keepers\\src\\main\\resources\\keepers-d6d9f-firebase-adminsdk-4n4se-14aa04052c.json");
			
			FirebaseOptions options = new FirebaseOptions.Builder()
					.setCredentials(GoogleCredentials.fromStream(refreshToken))
					.setDatabaseUrl("firebase-adminsdk-4n4se@keepers-d6d9f.iam.gserviceaccount.com")
					.build();
			
			//firebase처음 호출시 initializing처리
			if(FirebaseApp.getApps().isEmpty()) {
				FirebaseApp.initializeApp(options);
			}
			//안드로이드 토큰
			String registrationToken = "dRfuHnk1STWk1eFWjunHtN:APA91bEuy22afVyGJOtVgeFCtCOb0M_6r0YUtMQbxOjqz61X8kgFC8SjVYVv1ujbkvTb8OuIbujwOxP5dfrazXhUhrNanoW9wf8Br4p1sCd3xvyflC5BYJA1seQhHdWYP71dIwTs4me6";
		
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
