package com.key.mvcbase.service;

import java.io.Serializable;

import com.key.mvcbase.dao.BaseDao;
import com.key.mvcbase.service.BaseService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("baseService")
@Transactional(readOnly = false, propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
public class BaseServiceImpl<T,ID extends Serializable> implements BaseService<T,ID> {
	 

}