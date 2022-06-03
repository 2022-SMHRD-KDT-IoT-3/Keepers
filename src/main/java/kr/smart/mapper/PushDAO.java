package kr.smart.mapper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class PushDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int c_seq = 16;
	
		
		//푸쉬알림 사용자정보 
		public String sendPush(){
			System.out.println("푸쉬알림접근");
			String c_name ="";
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");

					String url = "jdbc:mysql://project-db-stu.ddns.net:3307/keepers";
					String dbid = "keepers";
					String dbpw = "keppers_user1234";

					conn = DriverManager.getConnection(url, dbid, dbpw);
					if (conn != null) {
						System.out.println("DB연결 성공");
					} else {
						System.out.println("DB연결 실패");
					}
					
					String sql = "select c_name from k_care where c_seq = ?";
					psmt = conn.prepareStatement(sql);
					
					psmt.setInt(1, c_seq);
					
					rs = psmt.executeQuery();
					if(rs.next()) {
						c_name = rs.getString(1);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						if (rs != null)
							rs.close();
						if (psmt != null)
							psmt.close();
						if (conn != null)
							conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			
			return c_name;
		}
		
		//시간별 체크
		public ArrayList<Double> check1(String start, String end){
			System.out.println("시간별체크 접근");
			ArrayList<Double> result = new ArrayList<>();
			 
			String c_name ="";
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");

					String url = "jdbc:mysql://project-db-stu.ddns.net:3307/keepers";
					String dbid = "keepers";
					String dbpw = "keppers_user1234";

					conn = DriverManager.getConnection(url, dbid, dbpw);
					if (conn != null) {
						System.out.println("DB연결 성공");
					} else {
						System.out.println("DB연결 실패");
					}
					
					String sql = "select v.v_weight\r\n" + 
							"from k_value v, k_device d\r\n" + 
							"where d.d_seq = v.d_seq\r\n" + 
							"and d.d_c_seq = ? \r\n" + 
							"and DATE(v.v_signdate) = DATE(sysdate())\r\n" + 
							"and TIME(v.v_signdate) between ? and ?";
					psmt = conn.prepareStatement(sql);
					
					psmt.setInt(1, c_seq);
					psmt.setString(2, start);
					psmt.setString(3, end);
					
					rs = psmt.executeQuery();
					if(rs.next()) {
						Double value = rs.getDouble(1);
						
						result.add(value);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						if (rs != null)
							rs.close();
						if (psmt != null)
							psmt.close();
						if (conn != null)
							conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			
			return result;
		}
	
}
