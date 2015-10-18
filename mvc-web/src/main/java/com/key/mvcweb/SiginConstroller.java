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
	 
	// 解密验证
	private boolean doLogin(String userMD5Twice, String passMD5TwiceRSA) {
		
		return true;
	}
}
