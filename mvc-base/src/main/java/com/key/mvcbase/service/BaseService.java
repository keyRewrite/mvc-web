package com.key.mvcbase.service;

import java.io.Serializable;

import com.key.mvcbase.dao.BaseDao;

public interface BaseService<T, PK extends Serializable> extends BaseDao<T, Serializable> {

}