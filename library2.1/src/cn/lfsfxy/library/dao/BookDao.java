package cn.lfsfxy.library.dao;

import java.util.List;

import cn.lfsfxy.library.entity.Book;

public interface BookDao {
	List<Book> getBookList(String booktype) throws Exception;

	int addBook(Book book) throws Exception;

	Book getBookById(String id) throws Exception;

	int updateBook(Book book) throws Exception;
	
	int deteteBook(String bid) throws Exception;
}
