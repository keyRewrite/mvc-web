package com.key.mvcbase.service;

import java.io.Serializable;
import java.util.List;

import com.key.mvcbase.dao.BaseDao;
import com.key.mvcbase.service.BaseService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("baseService")
@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
public class BaseServiceImpl<T, ID extends Serializable> implements
		BaseService<T, ID> {

	private BaseDao<T, Serializable> baseDao;

	public void save(T entity) {
		baseDao.save(entity);
	}

	public void delete(T entity) {
		baseDao.delete(entity);
	}

	public void update(T entity) {
		baseDao.update(entity);
	}

	public void saveOrUpdate(T entity) {
		baseDao.saveOrUpdate(entity);
	}

	public List<T> find(String hql) {
		// TODO Auto-generated method stub
		return baseDao.find(hql);
	}

	public List<T> find(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDao.find(hql, param);
	}

	public List<T> find(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDao.find(hql, param);
	}

	public List<T> find(String hql, Object[] param, Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return baseDao.find(hql, param, page, rows);
	}

	public List<T> find(String hql, List<Object> param, Integer page,
			Integer rows) {
		// TODO Auto-generated method stub
		return baseDao.find(hql, param, page, rows);
	}

	public T get(Class<T> c, Serializable id) {
		// TODO Auto-generated method stub
		return baseDao.get(c, id);
	}

	public T get(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDao.get(hql, param);
	}

	public T get(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDao.get(hql, param);
	}

	public Long count(String hql) {
		// TODO Auto-generated method stub
		return baseDao.count(hql);
	}

	public Long count(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDao.count(hql, param);
	}

	public Long count(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDao.count(hql, param);
	}

	public Integer executeHql(String hql) {
		// TODO Auto-generated method stub
		return baseDao.executeHql(hql);
	}

	public Integer executeHql(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDao.executeHql(hql, param);
	}

	public Integer executeHql(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDao.executeHql(hql, param);
	}

}