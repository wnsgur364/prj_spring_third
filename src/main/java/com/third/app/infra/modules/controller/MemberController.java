package com.third.app.infra.modules.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.third.app.infra.modules.impl.MemberServiceImpl;
import com.third.app.infra.modules.vo.MemberVo;


@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			model.addAttribute("list", service.selectList(vo));
		} else {
//			by pass
		}
		return "admin/memberList";
	}
}
