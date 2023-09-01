package com.third.app.infra.modules.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	@RequestMapping("/boardList")
	public String boardList() {
		return "/user/indexBoardList";
	}
	
	@RequestMapping("/boardSelectOne")
	public String boardSelectOne() {
		return "/user/indexBoardSelectOne";
	}
	
	@RequestMapping("/boardForm")
	public String boardForm() {
		return "/user/indexBoardForm";
	}

}
