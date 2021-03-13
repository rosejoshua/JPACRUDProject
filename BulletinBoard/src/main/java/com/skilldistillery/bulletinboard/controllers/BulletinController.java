package com.skilldistillery.bulletinboard.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.bulletinboard.data.BulletinDAO;
import com.skilldistillery.bulletinboard.entities.Bulletin;

@Controller
public class BulletinController {
	
	@Autowired
	private BulletinDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		List<Bulletin> bulletinBoard = dao.showAll();
		model.addAttribute("bulletinBoard", bulletinBoard);
		return "index";
	}
	
	@RequestMapping(path="getAllAuthor.do")
	public String showAuthor(String author, Model model) {
		List<Bulletin> board = dao.showAllByAuthor(author);
		model.addAttribute("authorBoard", board);
		return "board/author";
	
	}

}
