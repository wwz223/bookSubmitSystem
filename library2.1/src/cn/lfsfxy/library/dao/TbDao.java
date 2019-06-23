package cn.lfsfxy.library.dao;

import java.util.List;

import cn.lfsfxy.library.entity.Tb;

public interface TbDao {
	List<Tb> getTbList() throws Exception;
	List<Tb> getTbListByTid(String loginName) throws Exception;
	int addTb(Tb tb) throws Exception;
	int deleteTb(String bid,String loginName) throws Exception;
}
