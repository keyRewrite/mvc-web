package com.key.mvcweb;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.key.mvcbase.dao.BaseDaoImpl;
import com.key.mvcweb.user.bean.User;
import com.key.mvcweb.user.dao.UserDaoImpl;

@Controller
public class RestConstroller {
	@Autowired
	private UserDaoImpl userDaoImpl;

	public RestConstroller() {
	}

	@RequestMapping(value = "/login/{user}", method = RequestMethod.GET)
	public ModelAndView myMethod(HttpServletRequest request,
			HttpServletResponse response, @PathVariable("user") String user,
			ModelMap modelMap) throws Exception {
		modelMap.put("loginUser", user);
		return new ModelAndView("/login/hello", modelMap);
	}

	/**
	 * 跳转欢迎页面
	 * @author sola
	 * @time 2015年10月18日 14:49:23
	 * @param request
	 * @param response
	 * @param modelMap
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String registPost() {
		return "/welcome";
	}
	
	/**
	 * 跳转登录页面
	 * @author sola
	 * @time 2015年10月18日 14:49:23
	 * @param request
	 * @param response
	 * @param modelMap
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response, ModelMap modelMap) throws Exception {

		return new ModelAndView("login", modelMap);
	}
	
	/**
	 * 跳转注测页面
	 * @author sola
	 * @time 2015年10月18日 14:49:23
	 * @param request
	 * @param response
	 * @param modelMap
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerPosts(HttpServletRequest request,
			HttpServletResponse response, ModelMap modelMap) throws Exception {

		return new ModelAndView("register", modelMap);
	}

}
