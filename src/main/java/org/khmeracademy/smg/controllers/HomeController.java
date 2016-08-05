package org.khmeracademy.smg.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping({"/", "/home","/index"})
	public String index(){
		return "index";
	}
	
}
