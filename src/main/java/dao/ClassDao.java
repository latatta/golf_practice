package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import util.OracleDataBaseConnection;
import vo.ClassVo;

public class ClassDao {
	public ClassDao() {
	}

	private static ClassDao dao = new ClassDao();

	public static ClassDao getInstance() {
		return dao;
	}

	public void insert(ClassVo vo) {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into tbl_class_202201 " + "(regist_month, c_no, class_area, tuition, teacher_code)"
				+ "values (?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getRegist_month());
			pstmt.setString(2, vo.getC_no());
			pstmt.setString(3, vo.getClass_area());
			pstmt.setInt(4, vo.getTuition());
			pstmt.setString(5, vo.getTeacher_code());
			pstmt.execute();

		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		}
	}

	public ClassVo searchOne(String regist_month, String c_no) {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from tbl_class_202201 where regist_month=? and c_no=?";
		ClassVo vo = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, regist_month);
			pstmt.setString(2, c_no);
			rs = pstmt.executeQuery();
			if (rs.next())
				vo = new ClassVo(rs.getString(1), 
								rs.getString(2), 
								rs.getString(3), 
								rs.getInt(4), 
								rs.getString(5));

		} catch (SQLException e) {
			System.out.println("search One SQL 에러 : " + e.getMessage());
		}
		return vo;
	}
	
}
