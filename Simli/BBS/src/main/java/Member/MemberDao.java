package Member;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import DB.DBIn;

public class MemberDao {

	public List<MemberDto> memberlist() {
		List<MemberDto> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		try {
			Class.forName(DBIn.jar);
			conn = DriverManager.getConnection(DBIn.url,DBIn.user,DBIn.pw);
			pstmt = conn.prepareStatement("SELECT * FROM user");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new MemberDto(
						rs.getString("ID"),
						rs.getString("PWD"),
						rs.getString("NAME"),
						rs.getString("GENDER"),
						rs.getString("EMAIL"))
				);
		}
	}catch (Exception e) {
		e.printStackTrace();
	}
		return list;
	}
	
	public boolean memberloginchk(String id, String pwd) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName(DBIn.jar);
			conn = DriverManager.getConnection(DBIn.url,DBIn.user,DBIn.pw);
			pstmt = conn.prepareStatement("SELECT * FROM DBS.user where userID=? and userPWD=?");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch (Exception e) {}
		}
		return false;
	}
}
