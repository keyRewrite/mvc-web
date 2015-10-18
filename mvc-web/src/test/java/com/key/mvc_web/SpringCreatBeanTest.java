package com.key.mvc_web;

import static org.junit.Assert.fail;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.jboss.logging.Logger;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.key.mvcbase.dao.BaseDao;
import com.key.mvcbase.dao.BaseDaoImpl;
import com.key.mvcweb.user.bean.User;

public class SpringCreatBeanTest {
	@Resource
	private BaseDao baseDao;
	@Resource
	private BaseDaoImpl baseDaoImpl;
	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;
	private ApplicationContext context;
	private Session session;
	private static Logger log;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		 log=Logger.getLogger(SpringCreatBeanTest.class);
	}

	@Before
	public void setUp() throws Exception {
		context = new FileSystemXmlApplicationContext(
				"WebContent/WEB-INF/applicationContext.xml");
		testSetSessionFactory();
	}

	@Test
	public void testBaseDaoImpl() {
		fail("Not yet implemented");
	}

	@Test
	public void testSetSessionFactory() {
		baseDaoImpl = (BaseDaoImpl) context.getBean("baseDaoImpl");
		// session=sessionFactory.getCurrentSession();
		session = baseDaoImpl.getSession();
		//System.out.println("sessionFactory>>" + sessionFactory);
		log.info("session:"+session);
	}

	@Test
	public void testSave() {

		baseDao = (BaseDao) context.getBean("baseDaoImpl");
		User user = new User();
		user.setAge(19);
		user.setName("sola");
		user.setUserName("rewrite");
		user.setPass("sola2014");
		baseDao.save(user);
	}

	@Test
	public void testFind() {
		baseDao = (BaseDao) context.getBean("baseDaoImpl");
		baseDao.find("From User");
	}
	
	@Test
	public void testDelete() {
		baseDao = (BaseDao) context.getBean("baseDaoImpl");
		
		baseDao.deleteById("User","402881e55079ecb4015079ed21c80000");
	}
}
