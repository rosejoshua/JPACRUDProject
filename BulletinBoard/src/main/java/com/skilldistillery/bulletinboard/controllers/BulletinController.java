package com.skilldistillery.bulletinboard.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.bulletinboard.data.BulletinDAO;

@Controller
public class BulletinController {
	
	@Autowired
	private BulletinDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("bulletin", dao.findById(1)); //DEBUG, remove later
		return "index";
	}

}
