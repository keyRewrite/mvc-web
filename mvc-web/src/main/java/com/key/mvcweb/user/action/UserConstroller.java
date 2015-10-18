package com.key.mvcweb.user.action;

import java.util.List;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.key.mvcweb.MD5Util;
import com.key.mvcweb.RSAUtil;
import com.key.mvcweb.SiginConstroller;
import com.key.mvcweb.user.bean.User;
import com.key.mvcweb.user.dao.UserDao;
import com.key.mvcweb.user.dao.UserDaoImpl;
import com.key.mvcweb.user.service.UserService;

@Controller
public class UserConstroller {
	@Resource(name = "userService")
	private UserService userService;

	/**
	 * 用户登录
	 * 
	 * @author sola
	 * @time 2015年10月18日 14:45:49
	 * @param request
	 * @param response
	 * @param modelMap
	 * @return
	 * @throws Exception
	 */
	private static Logger log = LoggerFactory.getLogger(UserConstroller.class);

	@RequestMapping(value = "/sigin", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response, ModelMap modelMap) throws Exception {
		//用户名
		String user = request.getParameter("username");
		//2次md51次rsa加密密码
		String passMD5TwiceRSA = request.getParameter("pass");
		//公钥
		String strPublicKeyExponent=request.getParameter("strPublicKeyExponent");
		log.debug("userMD5Twice:" + user + " ,passMD5TwiceRSA:"
				+ passMD5TwiceRSA);
			
		MD5Util md5Util = new MD5Util();
		// md5解码后
		log.debug("MD5解密...");
		String passRSA = md5Util
				.convertMD5(md5Util.convertMD5(passMD5TwiceRSA));
		log.debug("user:" + user + ", passRSA:" + passRSA);

		
		// 初始化加密工具类
		RSAUtil rsaUtil = new RSAUtil();
		log.debug("正在初始化加密...");
		// 生成密钥对
		log.debug("已生成密钥对...");
		
		//byte[] raw = RSAUtil.encrypt(request.getSession().getAttribute("priKey"), orgData);
		//rsaUtil.decrypt(strPublicKeyExponent, raw);
		
		List<User> userdb=userService.find("From User u where u.userName=?", new Object[]{"user"});
		
		if (!user.isEmpty()) {
			if (!passRSA.isEmpty()) {
				log.info(user + ":登录成功!");
				return new ModelAndView("/welcome", modelMap);
			}
		} else {
			log.error("用户名不能为空!");
			modelMap.addAttribute("failed", "用户名不能为空!");
			return new ModelAndView("/login", modelMap);
		}
		log.error("登录失败!");
		modelMap.addAttribute("failed", "登录失败!");
		return new ModelAndView("/login", modelMap);
	}
	
	/**
	 * 用户注册
	 * 
	 * @author sola
	 * @time 2015年10月18日 14:45:49
	 * @param request
	 * @param response
	 * @param modelMap
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/newregister", method = RequestMethod.POST)
	public ModelAndView newregisterPosts(HttpServletRequest request,
			HttpServletResponse response, ModelMap modelMap) throws Exception {
		String pwdMD5TwiceRSA = request.getParameter("ptrsa");
		String user = request.getParameter("consumer");
		User userInfo = new User();
		userInfo.setUserName(user);
		userInfo.setPass(pwdMD5TwiceRSA);
		userService.save(userInfo);
		return new ModelAndView("register", modelMap);
	}

}
