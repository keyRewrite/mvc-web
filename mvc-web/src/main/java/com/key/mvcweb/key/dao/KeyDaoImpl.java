package com.key.mvcweb.key.dao;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

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
import com.key.mvcweb.key.bean.Key;

@Transactional
@Repository("keyDaoImpl")
public class KeyDaoImpl<Key, ID extends Serializable> extends
		BaseDaoImpl<Key, ID> {
	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;
	@Resource(name = "baseDaoImpl")
	private BaseDaoImpl baseDaoImpl;

	public void save(Key entity) {
		baseDaoImpl.save(entity);

	}

	@Override
	public void delete(Key entity) {
		// TODO Auto-generated method stub
		baseDaoImpl.delete(entity);
	}

	@Override
	public void update(Key entity) {
		// TODO Auto-generated method stub
		baseDaoImpl.update(entity);
	}

	@Override
	public List<Key> find(String hql) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql);
	}

	@Override
	public List<Key> find(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql, param);
	}

	@Override
	public List<Key> find(String hql, Object[] param, Integer page,
			Integer rows) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql, param, page, rows);
	}

	@Override
	public List<Key> find(String hql, List<Object> param, Integer page,
			Integer rows) {
		// TODO Auto-generated method stub
		return baseDaoImpl.find(hql, param, page, rows);
	}

	@Override
	public Long count(String hql) {
		// TODO Auto-generated method stub
		return baseDaoImpl.count(hql);
	}

	@Override
	public Long count(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.count(hql, param);
	}

	@Override
	public Long count(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.count(hql, param);
	}

	@Override
	public Integer executeHql(String hql) {
		// TODO Auto-generated method stub
		return baseDaoImpl.executeHql(hql);
	}

	@Override
	public Integer executeHql(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.executeHql(hql, param);
	}

	@Override
	public Integer executeHql(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return baseDaoImpl.executeHql(hql, param);
	}

}
