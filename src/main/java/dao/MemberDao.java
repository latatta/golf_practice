package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.OracleDataBaseConnection;
import vo.MemberVo;

public class MemberDao {
	public MemberDao() {	}
	private static MemberDao dao = new MemberDao();
	public static MemberDao getInstance() {
		return dao;
	}
	
	public List<MemberVo> selectList() {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select ct.regist_month, ct.c_no, mt.c_name, "
				+ "decode (ct.teacher_code, '100', '초급반', '200', '중급반', '300', '고급반', '400', '심화반'), "
				+ "ct.class_area, ct.tuition, mt.grade "
				+ "from tbl_class_202201 ct, tbl_member_202201 mt "
				+ "where ct.c_no = mt.c_no";
		List<MemberVo> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new MemberVo(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getInt(6),
										rs.getString(7)));
			}
			
			
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		}
		
		return list;
	}
}
