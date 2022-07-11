package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.OracleDataBaseConnection;
import vo.TeacherVo;

public class TeacherDao {
	public TeacherDao() {	}
	private static TeacherDao dao = new TeacherDao();
	public static TeacherDao getInstance() {
		return dao;
	}
	
	public List<TeacherVo> selectList() {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from tbl_teacher_202201";
		List<TeacherVo> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new TeacherVo(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getInt(4),
									rs.getString(5)));
			}
			
			
		} catch (Exception e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		}
		
		return list;
	}
}
