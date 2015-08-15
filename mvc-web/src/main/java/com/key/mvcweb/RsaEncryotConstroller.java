package com.key.mvcweb;

import java.security.KeyPair;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.key.mvcweb.RSAUtil;

@Controller
public class RsaEncryotConstroller {
	private static Logger log = Logger.getLogger(RsaEncryotConstroller.class);

	@RequestMapping(value = "/encryot", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response, ModelMap modelMap) throws Exception {
		// 初始化加密工具类
		RSAUtil rsaUtil = new RSAUtil();
		log.debug("正在初始化加密...");
		// 生成密钥对
		log.debug("已生成密钥对...");
		KeyPair keyPair = rsaUtil.generateKeyPair();
		
		RSAPublicKey pubKey = (RSAPublicKey) keyPair.getPublic();
		RSAPrivateKey priKey = (RSAPrivateKey) keyPair.getPrivate();
		log.debug("获得公钥pubKey为:" + pubKey);
		log.debug("获得私钥priKey为:" + priKey);
		
		byte[] pubModBytes = pubKey.getModulus().toByteArray();
		byte[] pubPubExpBytes = pubKey.getPublicExponent().toByteArray();
		byte[] priModBytes = priKey.getModulus().toByteArray();
		byte[] priPriExpBytes = priKey.getPrivateExponent().toByteArray();
		RSAPublicKey recoveryPubKey = RSAUtil.generateRSAPublicKey(pubModBytes,
				pubPubExpBytes);
		log.debug("获得公钥recoveryPubKey为:" + recoveryPubKey);
		RSAPrivateKey recoveryPriKey = RSAUtil.generateRSAPrivateKey(
				priModBytes, priPriExpBytes);
		//将私钥存入session
		request.getSession().setAttribute("priKey", priKey);
		request.setAttribute("strPublicKeyExponent", recoveryPubKey);
		request.setAttribute("strPublicKeyModulus", pubKey);
		return new ModelAndView("login", modelMap);
	}

}
