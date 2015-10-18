package com.key.mvcbase.service;

import java.io.Serializable;
import java.util.List;
import javax.annotation.Resource;
import com.key.mvcbase.dao.BaseDao;
import com.key.mvcbase.dao.BaseDaoImpl;
import com.key.mvcbase.service.BaseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("baseService")
@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
public class BaseService<T, ID extends Serializable> extends
		BaseDaoImpl<T, Serializable> {
	@Resource(name = "baseDaoImpl")
	private BaseDaoImpl baseDaoImpl;

	public void save(T entity) {
		baseDaoImpl.save(entity);
	}

	public void delete(T entity) {
		baseDaoImpl.delete(entity);
	}

	public void update(T entity) {
		baseDaoImpl.update(entity);
	}

	public void saveOrUpdate(T entity) {
		baseDaoImpl.saveOrUpdate(entity);
	}

	public List<T> find(String hql) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql);
	}

	public List<T> find(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql, param);
	}

	public List<T> find(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql, param);
	}

	public List<T> find(String hql, Object[] param, Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql, param, page, rows);
	}

	public List<T> find(String hql, List<Object> param, Integer page,
			Integer rows) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql, param, page, rows);
	}

	public Long count(String hql) {
		// TODO Auto-generated method stub
		return baseDaoImpl.count(hql);
	}

	public Long count(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.count(hql, param);
	}

	public Long count(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.count(hql, param);
	}

	public Integer executeHql(String hql) {
		// TODO Auto-generated method stub
		return baseDaoImpl.executeHql(hql);
	}

	public Integer executeHql(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.executeHql(hql, param);
	}

	public Integer executeHql(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.executeHql(hql, param);
	}

	public T get(Class<T> c, Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	public T get(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	public T get(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return null;
	}

}