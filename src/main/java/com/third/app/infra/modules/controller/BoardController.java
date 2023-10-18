package com.third.app.infra.modules.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.third.app.infra.modules.serviceImpl.BoardServiceImpl;
import com.third.app.infra.modules.vo.BoardVo;

@Controller
public class BoardController {
	
	@Autowired
	BoardServiceImpl service;
	
	@RequestMapping("/boardList")
	public String boardList(@ModelAttribute("vo") BoardVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			model.addAttribute("list", service.selectList(vo));
		} else {
//			by pass
		}
		return "/user/indexBoardList";
	}
	
	@RequestMapping("/boardSelectOne")
	public String boardSelectOne(BoardVo vo, Model model) {
		model.addAttribute("item", service.selectOne(vo));
		return "/user/indexBoardSelectOne";
	}
	
	@RequestMapping("/boardForm")
	public String boardForm(BoardVo vo, Model model) {
		model.addAttribute("item", service.selectOne(vo));
		return "/user/indexBoardForm";
	}
	
}
