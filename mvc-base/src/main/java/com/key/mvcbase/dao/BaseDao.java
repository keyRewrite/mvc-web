package com.key.mvcbase.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * 数据库基本操作类
 * 
 * Author: liu weiqi
 * 
 * Date:2015-8-12 Time:上午6:30:32
 * 
 */
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface BaseDao<T, ID extends Serializable> {

	/**
	 * 保存一个对象
	 * 
	 * @param entity
	 * @return
	 */
	public void save(T entity);

	/**
	 * 删除一个对象
	 * 
	 * @param entity
	 */
	public void delete(T entity);
	
	/**
	 * 删除一个对象 by ID
	 * 
	 * @param entity
	 */
	public void deleteById(String entityName, Object id);

	/**
	 * 更新一个对象
	 * 
	 * @param entity
	 */
	public void update(T entity);

	/**
	 * 保存或更新对象
	 * 
	 * @param entity
	 */

	public void saveOrUpdate(T entity);

	/**
	 * 查询
	 * 
	 * @param hql
	 * @return
	 */
	public List<T> findAll(String hql);

	/**
	 * 单个条件查询
	 * 
	 * @param hql
	 * @return
	 */
	public List<T> findOne(String hql, Object value);

	/**
	 * ID查询
	 * 
	 * @param entityName , id
	 * @return
	 */
	public T findById(String entityName, Object id);

	/**
	 * 查询集合
	 * 
	 * @param hql
	 * @param param
	 * @return
	 */
	public List<T> find(String hql, Object[] param);
	
	public List<T> find(String hql);

	/**
	 * 查询集合
	 * 
	 * @param hql
	 * @param param
	 * @return
	 */
	public List<T> findByList(String hql, List<Object> param);

	/**
	 * 查询集合(带分页)
	 * 
	 * @param hql
	 * @param param
	 * @param page
	 *            查询第几页
	 * @param rows
	 *            每页显示几条记录
	 * @return
	 */
	public List<T> findByPage(String hql, Object[] param, Integer page,
			Integer rows);

	/**
	 * 查询集合(带分页)
	 * 
	 * @param hql
	 * @param param
	 * @param page
	 * @param rows
	 * @return
	 */
	public List<T> findByPageForList(String hql, List<Object> param,
			Integer page, Integer rows);

	/**
	 * 获得一个对象
	 * 
	 * @param c
	 *            对象类型
	 * @param id
	 * @return Object
	 */
	public T get(Class<T> c, Serializable id);

	/**
	 * 获得一个对象
	 * 
	 * @param hql
	 * @param param
	 * @return Object
	 */
	public T getOne(String hql, Object[] param);

	/**
	 * 获得一个对象
	 * 
	 * @param hql
	 * @param param
	 * @return
	 */
	public T get(String hql, List<Object> param);

	/**
	 * select count(*) from 类
	 * 
	 * @param hql
	 * @return
	 */
	public Long count(String hql);

	/**
	 * select count(*) from 类
	 * 
	 * @param hql
	 * @param param
	 * @return
	 */
	public Long count(String hql, Object[] param);

	/**
	 * select count(*) from 类
	 * 
	 * @param hql
	 * @param param
	 * @return
	 */
	public Long count(String hql, List<Object> param);

	/**
	 * 执行HQL语句
	 * 
	 * @param hql
	 * @return 响应数目
	 */
	public Integer executeHql(String hql);

	/**
	 * 执行HQL语句
	 * 
	 * @param hql
	 * @param param
	 * @return 响应数目
	 */
	public Integer executeHql(String hql, Object[] param);

	/**
	 * 执行HQL语句
	 * 
	 * @param hql
	 * @param param
	 * @return
	 */
	public Integer executeHql(String hql, List<Object> param);
}
