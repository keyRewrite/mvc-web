package com.key.mvcweb.user.action;

import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.key.mvcweb.user.bean.User;
import com.key.mvcweb.user.dao.UserDaoImpl;

@Controller
public class UserConstroller {
	@Autowired
	private UserDaoImpl userDaoImpl;
	public UserConstroller() {
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
		 userDaoImpl.save(userInfo);
		return new ModelAndView("register",modelMap);
	}
	
}
