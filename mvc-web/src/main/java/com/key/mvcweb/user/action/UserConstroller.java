package com.key.mvcweb.user.action;

import java.util.List;

import javax.annotation.Resource;
import javax.annotation.Resources;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.key.mvcweb.MD5Util;
import com.key.mvcweb.RSAUtil;
import com.key.mvcweb.SiginConstroller;
import com.key.mvcweb.key.bean.Key;
import com.key.mvcweb.key.dao.KeyDaoImpl;
import com.key.mvcweb.user.bean.User;
import com.key.mvcweb.user.dao.UserDao;
import com.key.mvcweb.user.dao.UserDaoImpl;
import com.key.mvcweb.user.service.UserService;

@Controller
public class UserConstroller {
	@Resource(name = "userService")
	private UserService userService;
	@Resource(name = "keyDaoImpl")
	private KeyDaoImpl keyDaoImpl;
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
		// 用户名
		String user = request.getParameter("username");
		// rsa加密密码
		String pass4RSA = request.getParameter("pass");
		// 公钥
	/*	String strPublicKeyExponent = request
				.getParameter("strPublicKeyExponent");
		
		String strPublicKeyModulus = request
				.getParameter("strPublicKeyModulus");
		// 查找密钥
		List<Key> keyList = keyDaoImpl.find("from Key");
		if (keyList.size() > 0&&StringUtils.isNotBlank(strPublicKeyExponent)&&StringUtils.isNotBlank(strPublicKeyModulus)) {
			String modulus = keyList.get(0).getModulus();
			String priKey = keyList.get(0).getPrivateExponent();
			//开始解密
			RSAUtil.decrypt(strPublicKeyModulus, pass4RSA);
			if(){
				
			}
		}
		System.out.println("useraction  strPublicKeyExponent="
				+ strPublicKeyExponent);
*/

		// 初始化加密工具类
		//RSAUtil rsaUtil = new RSAUtil();
		log.debug("正在初始化加密...");
		// 生成密钥对
		log.debug("已生成密钥对...");

		// byte[] raw =
		// RSAUtil.encrypt(request.getSession().getAttribute("priKey"),
		// orgData);
		// rsaUtil.decrypt(strPublicKeyExponent, raw);
		 
		List<User> userdb = userService.find("From User u where u.userName='"+user+"'");
		 
		if (StringUtils.isNotBlank(pass4RSA)) {
			String passdb=userdb.get(0).getPass();
			if (passdb.equals(pass4RSA)) {
				log.info(user + ":登录成功!");
				modelMap.addAttribute("loginUser", user);
				return new ModelAndView("/view/index/index", modelMap);
			}
		} else {
			log.error("用户名不能为空!");
			modelMap.addAttribute("failed", "用户名不能为空!");
			return new ModelAndView("/view/login/login", modelMap);
		}
		log.error("登录失败!");
		modelMap.addAttribute("failed", "登录失败!");
		return new ModelAndView("/view/login/login", modelMap);
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

	/**
	 * 用户列表查询
	 * 2016年7月28日 21:36:37
	 * lwq
	 * @param request
	 * @param response
	 * @param modelMap
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/queryUserList", method = RequestMethod.POST,produces="application/json;charset=UTF-8")
	@ResponseBody
	public List<User> queryUserList(HttpServletRequest request,
			HttpServletResponse response, ModelMap modelMap) throws Exception {
		List<User> userdb = userService.find("From User u ");
		modelMap.addAttribute("userdb",userdb);
		
		return userdb;
	}

	
	
	
}
