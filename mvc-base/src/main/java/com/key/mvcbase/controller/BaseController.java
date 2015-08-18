package com.key.mvcbase.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
@Controller
public class BaseController extends MultiActionController {

	@Override
	protected void bind(HttpServletRequest arg0, Object arg1) throws Exception {
		// TODO Auto-generated method stub
		super.bind(arg0, arg1);
	}

	@Override
	protected ServletRequestDataBinder createBinder(HttpServletRequest request,
			Object command) throws Exception {
		// TODO Auto-generated method stub
		return super.createBinder(request, command);
	}

}
