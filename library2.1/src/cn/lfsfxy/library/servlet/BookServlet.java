package cn.lfsfxy.library.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.lfsfxy.library.entity.Book;
import cn.lfsfxy.library.impl.BookDaoImpl;
import net.sf.json.JSONArray;

@WebServlet("/bookServlet")
public class BookServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");//指定返回的格式为JSON格式
		response.setCharacterEncoding("UTF-8");//setContentType与setCharacterEncoding的顺序不能调换，否则还是无法解决中文乱码的问题
		
		String opt = request.getParameter("opt");

		
		BookDaoImpl impl = new BookDaoImpl();
		

		if (opt.equals("bookList")) {
			try {
				String booktype = request.getParameter("booktype");
				List<Book> list = new ArrayList<Book>();
				list = impl.getBookList(booktype);
				JSONArray jsonarray = JSONArray.fromObject(list);
//				response.getWriter().print(jsonarray);
				
				
				//jsonp解决跨域问题
				String jsonpCallback = request.getParameter("jsonpCallback");
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonarray+")");

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if (opt.equals("book")) {
			request.getRequestDispatcher("book.jsp");
		} else if (opt.equals("add")) {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Book book = new Book();
			book.setbId(request.getParameter("bId"));
			book.setbName(request.getParameter("bName"));
			book.setAuthor(request.getParameter("author"));
			book.setPubComp(request.getParameter("pubComp"));
			try {
				book.setPubDate(format.parse(request.getParameter("pubDate")));
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			book.setbCount(Integer.parseInt(request.getParameter("bCount")));
			book.setPrice(Float.parseFloat(request.getParameter("price")));
			try {
				if (impl.addBook(book) > 0) {
					response.sendRedirect("bookServlet?opt=getList");
				} else {
					request.setAttribute("err", "出错了，稍厚再试...");
					request.getRequestDispatcher("bookAdd.jsp").forward(
							request, response);
				}
			} catch (Exception e) {
				request.setAttribute("err", "书号重复，请更换书号！");
				request.getRequestDispatcher("bookAdd.jsp").forward(request,
						response);
			}
		} else if (opt.equals("getBookById")) {
			try {
				String id = request.getParameter("bid");
				Book book = new Book();
				book = impl.getBookById(id);
				JSONArray jsonarray = JSONArray.fromObject(book);
//				response.getWriter().print(jsonarray);
				
				//jsonp解决跨域问题
				String jsonpCallback = request.getParameter("jsonpCallback");
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonarray+")");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if (opt.equals("update")) {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Book book = new Book();
			book.setbId(request.getParameter("bId"));
			book.setbName(request.getParameter("bName"));
			book.setAuthor(request.getParameter("author"));
			book.setPubComp(request.getParameter("pubComp"));
			String date = request.getParameter("pubDate");
			try {
				book.setPubDate(format.parse(date));
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			book.setbCount(Integer.parseInt(request.getParameter("bCount")));
			book.setPrice(Float.parseFloat(request.getParameter("price")));
			try {
				if (impl.updateBook(book) > 0) {
					response.sendRedirect("bookServlet?opt=getList");
				} else {
					request.setAttribute("err", "出错了，稍厚再试...");
					request.getRequestDispatcher("bookUpdate.jsp").forward(
							request, response);
				}
			} catch (Exception e) {
				request.setAttribute("err", "书号重复，请更换书号！");
				request.getRequestDispatcher("bookUpdate.jsp").forward(request,
						response);
			}
		} else if (opt.equals("deleteBook")) {
			String bid = request.getParameter("bid");
			try {
				if (impl.deteteBook(bid) > 0) {
					response.sendRedirect("bookServlet?opt=getList");
				} else {
					request.setAttribute("err", "出错了，稍候...");
					request.getRequestDispatcher("bookServlet?opt=getList")
							.forward(request, response);
				}
			} catch (Exception e) {
				request.setAttribute("err", "出错了，稍候...");
				request.getRequestDispatcher("bookServlet?opt=getList")
						.forward(request, response);
			}
		}
	}
}
