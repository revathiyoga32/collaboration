package com.colla.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.colla.dao.UserDao;
import com.colla.model.UserBlog;



@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	
	@Transactional(propagation = Propagation.SUPPORTS)
	public int insertRow(UserBlog user) {
		return userDao.insertRow(user);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List getList() {
		return userDao.getList();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public UserBlog getRowById(int userid) {
		return userDao.getRowById(userid);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateRow(UserBlog user) {
		return userDao.updateRow(user);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int deleteRow(int userid) {
		return userDao.deleteRow(userid);
	}
}