package com.key.mvcweb.user.service;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.key.mvcbase.dao.BaseDao;
import com.key.mvcbase.dao.BaseDaoImpl;
import com.key.mvcbase.service.BaseService;
import com.key.mvcbase.service.BaseServiceImpl;
import com.key.mvcweb.user.bean.User;
import com.key.mvcweb.user.service.UserServiceI;

@Transactional 
public class UserServiceImpl implements UserServiceI {

	public void save(Object entity) {
		// TODO Auto-generated method stub
		
	}

	public void delete(Object entity) {
		// TODO Auto-generated method stub
		
	}

	public void update(Object entity) {
		// TODO Auto-generated method stub
		
	}

	public void saveOrUpdate(Object entity) {
		// TODO Auto-generated method stub
		
	}

	public List find(String hql) {
		// TODO Auto-generated method stub
		return null;
	}

	public List find(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	public List find(String hql, List param) {
		// TODO Auto-generated method stub
		return null;
	}

	public List find(String hql, Object[] param, Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return null;
	}

	public List find(String hql, List param, Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object get(Class c, Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object get(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object get(String hql, List param) {
		// TODO Auto-generated method stub
		return null;
	}

	public Long count(String hql) {
		// TODO Auto-generated method stub
		return null;
	}

	public Long count(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	public Long count(String hql, List param) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer executeHql(String hql) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer executeHql(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer executeHql(String hql, List param) {
		// TODO Auto-generated method stub
		return null;
	}
 
	/*private BaseDao<User> userDao;// 看到妙处没

	public BaseDao<User> getUserDao() {
		return userDao;
	}

	public void setUserDao(BaseDao<User> userDao) {
		this.userDao = userDao;
	}*/
 
	

}
