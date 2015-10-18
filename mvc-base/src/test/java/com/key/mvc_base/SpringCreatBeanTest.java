package com.key.mvc_base;

import static org.junit.Assert.*;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringCreatBeanTest {

	private ApplicationContext context = null;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {

	}

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("applicationContext.xml");
	}

	@Test
	public void testBaseDaoImpl() {
		fail("Not yet implemented");
	}

	@Test
	public void testSetSessionFactory() {
		SessionFactory sessionFactory = (SessionFactory) context
				.getBean("sessionFactory");
		System.out.println("sessionFactory>>" + sessionFactory);
	}

	@Test
	public void testSave() {
		fail("Not yet implemented");
	}

}
