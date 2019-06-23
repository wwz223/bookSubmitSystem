package cn.lfsfxy.library.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.lfsfxy.library.entity.Book;
import cn.lfsfxy.library.entity.Tb;
import cn.lfsfxy.library.impl.TbDaoImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class TbServlet
 */
@WebServlet("/tbServlet")
public class TbServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String opt = request.getParameter("opt");
		TbDaoImpl impl = new TbDaoImpl();
		
		JSONObject jsonobject = new JSONObject();
		//jsonp解决跨域问题
		String jsonpCallback = request.getParameter("jsonpCallback");
		
		if (opt.equals("add")) {
			String bid = request.getParameter("bid");
			String bName = request.getParameter("bName");
			String loginName = request.getParameter("loginName");
			int bCount = Integer.parseInt(request.getParameter("bCount"));
			System.out.println(bid+bName+loginName+bCount);
			Tb tb = new Tb(0, bid,bName,loginName, bCount);

			/**
			 * addState
			 * 0  失败
			 * 1 成功
			 * 2 出错了
			 */
			
			try {
				if (impl.addTb(tb) > 0) {
					jsonobject.put("State","1");
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
				} else {
					jsonobject.put("State","0");
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
				}
			} catch (Exception e) {
				jsonobject.put("State","2");
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonobject+")");
			}
		}else if(opt.equals("delete")) {
			String bid = request.getParameter("bid");
			String loginName = request.getParameter("loginName");
			System.out.println("bidhe loginName:"+bid+loginName);
			try {
				if (impl.deleteTb(bid,loginName) > 0) {
					jsonobject.put("State","1");
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
					System.out.println("删除成功");
				} else {
					jsonobject.put("State","0");
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
					System.out.println("删除失败");
				}
			} catch (Exception e) {
				jsonobject.put("State","2");
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonobject+")");
				System.out.println("出错了");
			}
		}else if(opt.equals("getTbByTid")) {
			try {
				String loginName = request.getParameter("loginName");
				List<Tb> list = new ArrayList<Tb>();
				list = impl.getTbListByTid(loginName);
				JSONArray jsonarray = JSONArray.fromObject(list);
//				response.getWriter().print(jsonarray);
				
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonarray+")");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(opt.equals("getTbList")) {
			try {
				List<Tb> list = new ArrayList<Tb>();
				list = impl.getTbList();
				JSONArray jsonarray = JSONArray.fromObject(list);
//				response.getWriter().print(jsonarray);
				
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonarray+")");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
