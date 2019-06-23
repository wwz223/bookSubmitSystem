package cn.lfsfxy.library.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	// 获得链接方法
	public Connection getConnection() throws Exception {
		// 1:加载驱动
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 2:获得链接
		return DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/Library", "root", "1996");
	}

	// 关闭对象方法
	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 增刪改方法
	public int executeUpdate(String sql, Object... params) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			conn = this.getConnection();
			pstmt = conn.prepareStatement(sql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i + 1, params[i]);
				}
			}
			result = pstmt.executeUpdate();
		} finally {
			closeAll(null, pstmt, conn);
		}
		return result;
	}
}
