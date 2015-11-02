package com.key.mvcweb;

import java.security.KeyPair;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.key.mvccommon.util.TranscodingUtil;
import com.key.mvcweb.RSAUtil;
import com.key.mvcweb.key.bean.Key;
import com.key.mvcweb.key.dao.KeyDaoImpl;
import com.key.mvcweb.user.service.UserService;

@Controller
public class RsaEncryotConstroller {
	private static Logger log = Logger.getLogger(RsaEncryotConstroller.class);
	@Resource(name = "keyDaoImpl")
	private KeyDaoImpl keyDaoImpl;
	@Resource(name = "transcodingUtil")
	private TranscodingUtil transcodingUtil;

	@RequestMapping(value = "/encryot", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody
	Map<String, Object> login(HttpServletRequest request,
			HttpServletResponse response, ModelMap modelMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Key> keyList = keyDaoImpl.find("from Key");
		if (keyList.size() > 0) {
			log.error("have a key " + keyDaoImpl.count("from Key "));

			request.getSession().setAttribute("priKey",
					keyList.get(0).getPrivateExponent());
			request.getSession().setAttribute("strPublicKeyExponent",
					keyList.get(0).getPublicExponent());
			request.getSession().setAttribute("strPublicKeyModulus",
					keyList.get(0).getModulus());

			map.put("strPublicKeyExponent", keyList.get(0).getPublicExponent());
			map.put("strPublicKeyModulus", keyList.get(0).getModulus());

		} else {
			System.err.println("no key");

			// 初始化加密工具类
			RSAUtil rsaUtil = new RSAUtil();
			log.error("正在初始化加密...");
			// 生成密钥对
			log.debug("已生成密钥对...");
			KeyPair keyPair = rsaUtil.generateKeyPair();

			RSAPublicKey pubKey = (RSAPublicKey) keyPair.getPublic();
			RSAPrivateKey priKey = (RSAPrivateKey) keyPair.getPrivate();
			log.debug("获得公钥pubKey为:" + pubKey);
			log.debug("获得私钥priKey为:" + priKey);

			// ----------------保存公私钥匙----------------
			Key key = new Key();
			key.setPrivateExponent(priKey.getPrivateExponent().toString(16));
			key.setPublicExponent(pubKey.getPublicExponent().toString(16));
			key.setModulus(priKey.getModulus().toString(16));
			keyDaoImpl.save(key);

			byte[] pubModBytes = pubKey.getModulus().toByteArray();
			byte[] pubPubExpBytes = pubKey.getPublicExponent().toByteArray();
			byte[] priModBytes = priKey.getModulus().toByteArray();
			byte[] priPriExpBytes = priKey.getPrivateExponent().toByteArray();
			RSAPublicKey recoveryPubKey = RSAUtil.generateRSAPublicKey(
					pubModBytes, pubPubExpBytes);
			log.debug("获得公钥recoveryPubKey为:" + recoveryPubKey);
			RSAPrivateKey recoveryPriKey = RSAUtil.generateRSAPrivateKey(
					priModBytes, priPriExpBytes);
			// 将私钥存入session
			request.getSession().setAttribute("priKey", priKey);
			request.getSession().setAttribute("strPublicKeyExponent",
					recoveryPubKey.getPublicExponent().toString(16));
			request.getSession().setAttribute("strPublicKeyModulus",
					recoveryPubKey.getModulus().toString(16));
			System.out.println("strPublicKeyExponent"
					+ recoveryPubKey.getPublicExponent().toString(16));

			map.put("strPublicKeyExponent", recoveryPubKey.getPublicExponent()
					.toString(16));
			map.put("strPublicKeyModulus", recoveryPubKey.getModulus()
					.toString(16));
			log.debug("strPublicKeyExponent:"
					+ recoveryPubKey.getPublicExponent().toString(16));
			log.debug("strPublicKeyModulus:"
					+ recoveryPubKey.getModulus().toString(16));
		}
		return map;
	}

}
