package com.key.mvcweb;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.key.mvcweb.user.bean.User;
import com.key.mvcweb.user.dao.UserDaoImpl;

@Controller
public class RestConstroller {
	private UserDaoImpl userDaoImpl=new UserDaoImpl();
	public RestConstroller() {
	}

	@RequestMapping(value = "/login/{user}", method = RequestMethod.GET)
	public ModelAndView myMethod(HttpServletRequest request,
			HttpServletResponse response, @PathVariable("user") String user,
			ModelMap modelMap) throws Exception {
		modelMap.put("loginUser", user);
		return new ModelAndView("/login/hello", modelMap);
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String registPost() {
		return "/welcome";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response,
			ModelMap modelMap) throws Exception{
		
		return new ModelAndView("login",modelMap);
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerPosts(HttpServletRequest request,
			HttpServletResponse response,
			ModelMap modelMap) throws Exception{
		
		return new ModelAndView("register",modelMap);
	}
	
	@RequestMapping(value = "/newregister", method = RequestMethod.POST)
	public ModelAndView newregisterPosts(HttpServletRequest request,
			HttpServletResponse response,
			ModelMap modelMap) throws Exception{
		 String pwdMD5Twice=request.getParameter("pwdMD5Twice");
		 String user=request.getParameter("user");
		 User userInfo=new User();
		 userInfo.setUserName(user);
		 userInfo.setPass(pwdMD5Twice);
		// userDaoImpl.save(userInfo);
		return new ModelAndView("register",modelMap);
	}
	
}
