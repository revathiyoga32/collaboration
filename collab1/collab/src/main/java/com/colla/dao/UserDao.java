package com.colla.dao;

import java.util.List;
import com.colla.model.UserBlog;

public interface UserDao {
	public int insertRow(UserBlog user);

	 public List getList();

	 public UserBlog getRowById(int userid);

	 public int updateRow(UserBlog user);

	 public int deleteRow(int userid);

}


