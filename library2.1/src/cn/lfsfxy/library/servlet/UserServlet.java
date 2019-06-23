package cn.lfsfxy.library.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.lfsfxy.library.entity.Book;
import cn.lfsfxy.library.entity.User;
import cn.lfsfxy.library.impl.UserDaoImpl;
import cn.lfsfxy.library.utils.SecurityUtils;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String opt = request.getParameter("opt");
		UserDaoImpl impl = new UserDaoImpl();
		

		if (opt.equals("regist")) {
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			String sex = "男";
			User user = new User("", name, SecurityUtils.md5Hex(pwd),"","","","");
			JSONObject jsonobject = new JSONObject();
			
			//jsonp解决跨域问题
			String jsonpCallback = request.getParameter("jsonpCallback");
			
			System.out.println("注册：");
			/**
			 * registstate：0  输入有误
			 * registstate：1 注册成功
			 * registstate：2 用户名已存在
			 */
			try {
				if (impl.add(user) > 0) {
					jsonobject.put("registstate","1");
					System.out.println(jsonobject);
//					response.getWriter().print(jsonobject);
					
					
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
					
				} else {
					jsonobject.put("registstate","0");
					System.out.println(jsonobject);
//					response.getWriter().print(jsonobject);
					
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
				}
			} catch (Exception e) {
				jsonobject.put("registstate","2");
				System.out.println(jsonobject);
//				response.getWriter().print(jsonobject);
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonobject+")");
			}
		} else if (opt.equals("login")) {
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			System.out.println(name+pwd);
			String sex = "男";
			User user = new User("", name, SecurityUtils.md5Hex(pwd), "","","","");
			JSONObject jsonobject = new JSONObject();
			//jsonp解决跨域问题
			String jsonpCallback = request.getParameter("jsonpCallback");
			/**
			 * loginstate：0   用户名不存在
			 * loginstate：1 登录成功
			 * loginstate：2 输入有误
			 */
			try {
				if (impl.login(user)) {
					//如果登录成功，session存入值
					System.out.println("登录成功");
					HttpSession session = request.getSession();
					session.setAttribute("login", "yes");
					session.setAttribute("username",user.getLoginName());
					jsonobject.put("loginstate","1");
//					response.getWriter().print(jsonobject);
					
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
					 
				} else {
					request.setAttribute("err", "出错了，请重试");
					jsonobject.put("loginstate","0");
//					response.getWriter().print(jsonobject);
					
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
				}
			} catch (Exception e) {
				request.setAttribute("err", "出错了，错误信息为：" + e.getMessage()
				+ ",请重试");
				jsonobject.put("loginstate","3");
//				response.getWriter().print(jsonobject);
				
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonobject+")");
			}
		}else if(opt.equals("userMessageSubmit")) {
			String tName = request.getParameter("tName");
			String loginName = request.getParameter("loginName");
			String sex = request.getParameter("sex");
			String phoneNumber = request.getParameter("phoneNumber");
			String backImg = request.getParameter("backImg");
			String intro = request.getParameter("intro");
			User user = new User(tName, loginName, "", sex,phoneNumber,backImg,intro);
			JSONObject jsonobject = new JSONObject();
			
			//jsonp解决跨域问题
			String jsonpCallback = request.getParameter("jsonpCallback");
			try {
				if (impl.addUserMessage(user)>0) {
					//如果登录成功，session存入值
					System.out.println("提交成功");
					jsonobject.put("submitState","1");
					System.out.println("submitState:1");
//					response.getWriter().print(jsonobject);
					
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
					 
				} else {
					request.setAttribute("err", "出错了，请重试");
					jsonobject.put("submitState","0");
					System.out.println("submitState:0");
//					response.getWriter().print(jsonobject);
					
					//构造回调函数格式jsonpCallback(数据)
					response.getWriter().println(jsonpCallback+"("+jsonobject+")");
				}
			} catch (Exception e) {
				request.setAttribute("err", "出错了，错误信息为：" + e.getMessage()
				+ ",请重试");
				jsonobject.put("submitState","2");
				System.out.println("submitState:2");
//				response.getWriter().print(jsonobject);

				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonobject+")");
			}
		}else if(opt.equals("getUserMessage")){
			try {
				String loginName = request.getParameter("loginName");
				User user = new User();
				user = impl.getUserMessage(loginName);
				JSONArray jsonarray = JSONArray.fromObject(user);
//				response.getWriter().print(jsonarray);
				
				//jsonp解决跨域问题
				String jsonpCallback = request.getParameter("jsonpCallback");
				//构造回调函数格式jsonpCallback(数据)
				response.getWriter().println(jsonpCallback+"("+jsonarray+")");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if (opt.equals("signout")) {
			JSONObject jsonobject = new JSONObject();
			
			//jsonp解决跨域问题
			String jsonpCallback = request.getParameter("jsonpCallback");
			
			HttpSession session = request.getSession();  
			System.out.println(session.getAttribute("login"));
			session.invalidate(); 
			
			jsonobject.put("signoutState","1");
			//构造回调函数格式jsonpCallback(数据)
			response.getWriter().println(jsonpCallback+"("+jsonobject+")");
			System.out.println("退出成功");
		}
	}
	
}
