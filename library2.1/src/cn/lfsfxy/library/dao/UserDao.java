package cn.lfsfxy.library.dao;

import cn.lfsfxy.library.entity.User;

public interface UserDao {
	public int add(User user) throws Exception;// 返回值表示：影响行数
	
	boolean login(User user) throws Exception;
	
	public int addUserMessage(User user) throws Exception;
	
	public User getUserMessage(String loginName) throws Exception;
}
