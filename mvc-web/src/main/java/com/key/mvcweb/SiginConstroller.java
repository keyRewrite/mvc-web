package com.key.mvcweb;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.key.mvcweb.MD5Util;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.apache.log4j.Logger;
import org.bouncycastle.asn1.ocsp.Request;
import org.slf4j.LoggerFactory;

@Controller
public class SiginConstroller {
	private static Logger log = Logger.getLogger(SiginConstroller.class);

	@RequestMapping(value = "/sigin", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response, ModelMap modelMap) throws Exception {
		String user = request.getParameter("username");
		String passMD5TwiceRSA = request.getParameter("pass");
		String strPublicKeyExponent=request.getParameter("strPublicKeyExponent");
		log.debug("userMD5Twice:" + user + " ,passMD5TwiceRSA:"
				+ passMD5TwiceRSA);
			
//		doLogin(userMD5Twice,passMD5TwiceRSA);
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
		
		/*if (!user.isEmpty()) {
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
		modelMap.addAttribute("failed", "登录失败!");*/
		return new ModelAndView("/login", modelMap);
	}

	// 解密验证
	private boolean doLogin(String userMD5Twice, String passMD5TwiceRSA) {
		
		return true;
	}
}
