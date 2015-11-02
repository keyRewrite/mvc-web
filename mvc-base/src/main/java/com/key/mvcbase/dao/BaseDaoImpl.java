package com.key.mvcbase.dao;

import java.io.Serializable;

import org.slf4j.Logger;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.LoggerFactory;

@Transactional
@Repository("baseDaoImpl")
public class BaseDaoImpl<T, ID extends Serializable> implements BaseDao<T, ID> {
	private final Logger logger = LoggerFactory.getLogger(BaseDaoImpl.class);
	private Class<T> entityClass;
	@Resource(name = "sessionFactory")
	protected SessionFactory sessionFactory;

	public BaseDaoImpl() {
		/*
		 * this.entityClass = null; Class<?> c = getClass(); Type type =
		 * c.getGenericSuperclass(); if (type instanceof ParameterizedType) {
		 * Type[] parameterizedType = ((ParameterizedType) type)
		 * .getActualTypeArguments(); this.entityClass = (Class<T>)
		 * parameterizedType[0]; }
		 */
		super();
		// 通过反射取得Entity的Class.
		try {
			Object genericClz = getClass().getGenericSuperclass();
			if (genericClz instanceof ParameterizedType) {
				entityClass = (Class<T>) ((ParameterizedType) getClass()
						.getGenericSuperclass()).getActualTypeArguments()[0];
			}
		} catch (Exception e) {
			logger.error("error detail:", e);
		}
	}

	@Resource(name = "sessionFactory")
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public void save(T entity) {
		getSession().save(entity);
		logger.debug(entity.getClass().getSimpleName() + ":has save!");
	}

	public void delete(T entity) {
		getSession().delete(entity);
		logger.debug(entity.getClass().getSimpleName() + ":has delete!");
	}

	public void update(T entity) {
		getSession().update(entity);
		logger.debug(entity.getClass().getSimpleName() + ":has update!");
	}

	public void saveOrUpdate(T entity) {
		getSession().saveOrUpdate(entity);
		logger.debug(entity.getClass().getSimpleName() + ":has saveOrUpdate!");
	}

	public List<T> find(String hql) {
		List<T> t = (List<T>) getSession().createQuery(hql).list();
		return t;
	}

	public List<T> find(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<T> find(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<T> find(String hql, Object[] param, Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<T> find(String hql, List<Object> param, Integer page,
			Integer rows) {
		// TODO Auto-generated method stub
		return null;
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

	public Long count(String hql) {
		return  (long) getSession().createQuery(hql).list().size();
	}

	public Long count(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	public Long count(String hql, List<Object> param) {
		getSession().createQuery(hql);
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

	public Integer executeHql(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<T> findAll(String entityName) {
		return getSession().createQuery("From " + entityName).list();
	}

	@SuppressWarnings("unchecked")
	public List<T> findOne(String entityName, Object value) {
		return getSession().createQuery("From " + entityName).list();
	}

	@SuppressWarnings("unchecked")
	public T findById(String entityName, Object id) {
		return (T) getSession().createQuery(
				"From " + entityName + " t where t.id= " + id);
	}

	public List<T> findByList(String hql, List<Object> param) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<T> findByPage(String hql, Object[] param, Integer page,
			Integer rows) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<T> findByPageForList(String hql, List<Object> param,
			Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return null;
	}

	public T getOne(String hql, Object[] param) {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteById(String entityName, Object ID) {
		getSession()
				.createQuery("Delete " + entityName + " t where t.id=" + ID);

	}

}
