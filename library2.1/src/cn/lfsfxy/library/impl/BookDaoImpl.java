package cn.lfsfxy.library.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.lfsfxy.library.dao.BaseDao;
import cn.lfsfxy.library.dao.BookDao;
import cn.lfsfxy.library.entity.Book;

public class BookDaoImpl extends BaseDao implements BookDao {

	@Override
	public List<Book> getBookList(String booktype) throws Exception {
		String sql = "select * from book";
		if(!booktype.equals("ALL")){
			sql = "select * from book where type = '"+booktype+"'";
		}
		List<Book> list = new ArrayList<Book>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Book book = new Book();
				book.setAuthor(rs.getString("author"));
				book.setbCount(rs.getInt("bcount"));
				book.setbId(rs.getString("bid"));
				book.setbName(rs.getString("bname"));
				book.setPrice(rs.getFloat("price"));
				book.setPubComp(rs.getString("pubcomp"));
				book.setPubDate(rs.getDate("pubdate"));
				book.setType(rs.getString("type"));
				book.setImg(rs.getString("img"));
				book.setIntro(rs.getString("intro"));
				list.add(book);
			}
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return list;

	}

	@Override
	public int addBook(Book book) throws Exception {
		String sql = "insert into book(bid,bname,author,pubComp,pubDate,bcount,price,type,img,intro) value(?,?,?,?,?,?,?,?,?,?)";

		return this.executeUpdate(sql, book.getbId(), book.getbName(),
				book.getAuthor(), book.getPubComp(), book.getPubDate(),
				book.getbCount(), book.getPrice(),book.getType(),book.getImg(),book.getIntro());
	}

	@Override
	public Book getBookById(String id) throws Exception {
		String sql = "select * from book where bid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Book book = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				book = new Book();
				book.setAuthor(rs.getString("author"));
				book.setbCount(rs.getInt("bcount"));
				book.setbId(rs.getString("bid"));
				book.setbName(rs.getString("bname"));
				book.setPrice(rs.getFloat("price"));
				book.setPubComp(rs.getString("pubcomp"));
				book.setPubDate(rs.getDate("pubdate"));
				book.setType(rs.getString("type"));
				book.setImg(rs.getString("img"));
				book.setIntro(rs.getString("intro"));
			}
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return book;
	}

	@Override
	public int updateBook(Book book) throws Exception {
		String sql = "update book set bname=?,author=?,pubComp=?,pubDate=?,bcount=?,price=?,type=?,img=?,intro=? where bid=?";
		return this.executeUpdate(sql, book.getbName(), book.getAuthor(),
				book.getPubComp(), book.getPubDate(), book.getbCount(),
				book.getPrice(),book.getType(),book.getImg(),book.getIntro(), book.getbId());
	}

	@Override
	public int deteteBook(String bid) throws Exception {
		String sql="delete from book where bid=?";
		return this.executeUpdate(sql, bid);
	}

}
