package com.key.mvcweb.user.dao;

import com.key.mvcbase.dao.BaseDao;
import com.key.mvcweb.user.bean.User;

import  java.io.Serializable;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
@Transactional
public interface  UserDao extends BaseDao{

}
