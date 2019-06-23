package cn.lfsfxy.library.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.lfsfxy.library.dao.BaseDao;
import cn.lfsfxy.library.dao.UserDao;
import cn.lfsfxy.library.entity.Book;
import cn.lfsfxy.library.entity.User;

public class UserDaoImpl extends BaseDao implements UserDao {
//	注册用户
	@Override
	public int add(User user) throws Exception {
		String sql = "insert into teacher(tName,loginName,password,sex) values(?,?,?,?)";

		return executeUpdate(sql,user.gettName(), user.getLoginName(), user.getPassword(),
				user.getSex());
	}
//	提交用户信息
	public int addUserMessage(User user) throws Exception {
		String sql = "update teacher set tName =? ,sex = ?,phoneNumber = ?,backImg =?,intro = ? where loginName = ?";
		return executeUpdate(sql,user.gettName(), user.getSex(), user.getPhoneNumber(),user.getBackImg(),user.getIntro(),user.getLoginName());
	}
//	登录
	@Override
	public boolean login(User user) throws Exception {
		String sql = "select count(*) from teacher where loginName=? and password=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = this.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getLoginName());
			pstmt.setString(2, user.getPassword());
			rs = pstmt.executeQuery();
			rs.next();//走到下一行
			if (rs.getInt(1)>0) {
				return true;
			} else {
				return false;
			}
		} finally{
			this.closeAll(rs, pstmt, conn);
		}
	}
	@Override
	public User getUserMessage(String loginName) throws Exception {
		// TODO 自动生成的方法存根
		String sql = "select * from teacher where loginName=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginName);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new User();
				user.settName(rs.getString("tName"));
				user.setLoginName(rs.getString("loginName"));
				user.setPassword(null);
				user.setSex(rs.getString("sex"));
				user.setPhoneNumber(rs.getString("phoneNumber"));
				user.setBackImg(rs.getString("backImg"));
				user.setIntro(rs.getString("intro"));
			}
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return user;
	}
}
