package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.OracleDataBaseConnection;
import vo.SaleVo;

public class SaleDao {
	public SaleDao() {	}
	private static SaleDao dao = new SaleDao();
	public static SaleDao getInstance() {
		return dao;
	}
	
	public List<SaleVo> selectSale() {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select c.teacher_code, t.class_name, t.teacher_name, sum(c.tuition) as total "
				+ "from tbl_teacher_202201 t, tbl_class_202201 c "
				+ "where t.teacher_code = c.teacher_code "
				+ "group by (c.teacher_code, t.class_name, t.teacher_name) order by c.teacher_code";
		List<SaleVo> sale = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				sale.add(new SaleVo(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getInt(4)));
			}
			
		} catch (Exception e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		}
		
		return sale;
	}
}
