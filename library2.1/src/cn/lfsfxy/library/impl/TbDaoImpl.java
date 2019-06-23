package cn.lfsfxy.library.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.lfsfxy.library.dao.BaseDao;
import cn.lfsfxy.library.dao.TbDao;
import cn.lfsfxy.library.entity.Tb;

public class TbDaoImpl extends BaseDao implements TbDao{

	@Override
	public List<Tb> getTbList() throws Exception {
		// TODO 自动生成的方法存根
		String sql = "select * from tb";
		List<Tb> list = new ArrayList<Tb>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Tb tb = new Tb();
				tb.setTbid(rs.getInt("tbid"));
				tb.setBid(rs.getString("bid"));
				tb.setbName(rs.getString("bName"));
				tb.setLoginName(rs.getString("loginName"));
				tb.setbCount(rs.getInt("bCount"));
				list.add(tb);
			}
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return list;

	}

	@Override
	public List<Tb> getTbListByTid(String loginName) throws Exception {
		// TODO 自动生成的方法存根
//		String sql = "SELECT * FROM book INNER JOIN tb ON book.bid = tb.bid WHERE loginName = '"+loginName+"'";
		String sql = "select * from tb where loginName='"+loginName+"'";
		
		List<Tb> list = new ArrayList<Tb>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Tb tb = new Tb();
				tb.setTbid(rs.getInt("tbid"));
				tb.setBid(rs.getString("bid"));
				tb.setbName(rs.getString("bName"));
				tb.setLoginName(rs.getString("loginName"));
				tb.setbCount(rs.getInt("bCount"));
				list.add(tb);
			}
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return list;
	}

	@Override
	public int addTb(Tb tb) throws Exception {
		// TODO 自动生成的方法存根
		String sql = "insert into tb(bid,bName,loginName,bCount) values(?,?,?,?)";
		System.out.println("正在添加数据");
		return this.executeUpdate(sql,tb.getBid(),tb.getbName(),tb.getLoginName(),tb.getbCount());
	}

	@Override
	public int deleteTb(String bid,String loginName) throws Exception {
		// TODO 自动生成的方法存根
		
		String sql = "delete from tb where bid=? and loginName =?";
		System.out.println("正在删除数据");
		return this.executeUpdate(sql,bid,loginName);
	}

}
