package login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
	Connection conn;

	public LoginDAO() {
		//ID, PASSWORD NULL OR "" 를 확인해하는 사항이 있어야함.-생략
		String dburl="jdbc:oracle:thin:@localhost:1521:xe";
		String dbuser="user1";
		String dbpassword="1111";
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection(dburl,dbuser,dbpassword);
		}catch(Exception e) {
			
		}
		if(conn==null){
			System.out.println("db접속실패");
		}else{
			System.out.println("db접속성공");
		}
	}
	
	public int loginCheck(String id, String password) {
		//DB관련 객체 선언
		PreparedStatement psmt=null;
		ResultSet rs=null;
		String sql="";
		int result;
		//2.데이터베이스 조건을 이용하는 방법
		try {
		sql="select * from member where id=? and password=?";
		psmt=conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, password);
		rs=psmt.executeQuery();

		if(rs.next()){
			result=1;
		}else{
			result=0;
		}
		rs.close();
		psmt.close();
		conn.close();
		
		return result;
		}catch(Exception e) {
		return 0;
		}
		
	}
}
