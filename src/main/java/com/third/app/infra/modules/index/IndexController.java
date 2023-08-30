package com.third.app.infra.modules.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String indexUser() {
		return "/user/indexUser";
	}
	
}
