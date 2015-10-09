package com.key.mvcweb.user.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.key.mvcbase.dao.BaseDao;
import com.key.mvcbase.dao.BaseDaoImpl;
import com.key.mvcweb.user.bean.User;
@Transactional  
@Repository("UserDao") 
public class UserDaoImpl<T, ID extends Serializable> extends BaseDaoImpl<T,ID>{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void save(User entity) {
		sessionFactory.getCurrentSession().save(entity);
		
	}

	@Override
	public void delete(T entity) {
		// TODO Auto-generated method stub
		super.delete(entity);
	}

	@Override
	public void update(T entity) {
		// TODO Auto-generated method stub
		super.update(entity);
	}

	@Override
	public List<T> find(String hql) {
		// TODO Auto-generated method stub
		return super.find(hql);
	}

	@Override
	public List<T> find(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return super.find(hql, param);
	}

	@Override
	public List<T> find(String hql, Object[] param, Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return super.find(hql, param, page, rows);
	}

	@Override
	public List<T> find(String hql, List<Object> param, Integer page,
			Integer rows) {
		// TODO Auto-generated method stub
		return super.find(hql, param, page, rows);
	}

	@Override
	public Long count(String hql) {
		// TODO Auto-generated method stub
		return super.count(hql);
	}

	@Override
	public Long count(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return super.count(hql, param);
	}

	@Override
	public Long count(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return super.count(hql, param);
	}

	@Override
	public Integer executeHql(String hql) {
		// TODO Auto-generated method stub
		return super.executeHql(hql);
	}

	@Override
	public Integer executeHql(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return super.executeHql(hql, param);
	}

	@Override
	public Integer executeHql(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return super.executeHql(hql, param);
	}
	
	
}
