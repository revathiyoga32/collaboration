package com.colla.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.colla.model.UserBlog;




	@Repository("userDao")
	public class UserDaoImpl implements UserDao {
		
		@Autowired
		 private SessionFactory sessionFactory;

		@Transactional(propagation=Propagation.SUPPORTS)
		public int insertRow(UserBlog user) {
			Session session = sessionFactory.openSession();
			  Transaction tx = session.beginTransaction();
			  session.saveOrUpdate(user);
			  tx.commit();
			  Serializable userid = session.getIdentifier(user);
			  session.close();
			  return (Integer) userid;
		}

		@Transactional(propagation=Propagation.SUPPORTS)
		public List getList() {
			Session session = sessionFactory.openSession();
			  @SuppressWarnings("unchecked")
			  List userList = session.createQuery("from User")
			    .list();
			  session.close();
			  return userList;
		}

		@Transactional(propagation=Propagation.SUPPORTS)
		public UserBlog getRowById(int userid) {
			Session session = sessionFactory.openSession();
			  UserBlog user = (UserBlog) session.load(UserBlog.class, userid);
			  return user;
		}

		@Transactional(propagation=Propagation.SUPPORTS)
		public int updateRow(UserBlog user) {
			Session session = sessionFactory.openSession();
			  Transaction tx = session.beginTransaction();
			  session.saveOrUpdate(user);
			  tx.commit();
			  Serializable userid = session.getIdentifier(user);
			  session.close();
			  return (Integer) userid;
		}

		@Transactional(propagation=Propagation.SUPPORTS)
		public int deleteRow(int userid) {
			Session session = sessionFactory.openSession();
			  Transaction tx = session.beginTransaction();
			  UserBlog user = (UserBlog) session.load(UserBlog.class, userid);
			  session.delete(user);
			  session.flush();
			  tx.commit();
			  Serializable ids = session.getIdentifier(user);
			  session.close();
			  return (Integer) ids;
		}
		
	}


