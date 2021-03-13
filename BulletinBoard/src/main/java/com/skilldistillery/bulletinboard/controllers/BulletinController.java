package com.skilldistillery.bulletinboard.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.bulletinboard.data.BulletinDAO;
import com.skilldistillery.bulletinboard.entities.Bulletin;

@Controller
public class BulletinController {
	
	@Autowired
	private BulletinDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		List<Bulletin> bulletinBoard = dao.showAll();
		//list of integers of existing board ids to be used in dropdown
		//add it to modell with a separate name
		model.addAttribute("bulletinBoard", bulletinBoard);
		return "index";
	}
	
	@RequestMapping(path="getAllAuthor.do")
	public String showAuthor(String author, Model model) {
		List<Bulletin> board = dao.showAllByAuthor(author);
		model.addAttribute("authorBoard", board);
		return "board/author";
	
	}
	
	@RequestMapping(path="addPost.do", method=RequestMethod.POST)
	public String addPost(String author, Integer inReplyTo, String post) {
		Bulletin bulletin = new Bulletin(author, inReplyTo, post);
		dao.addPost(bulletin);
		return "redirect:home.do";
		
	}
	
	@RequestMapping(path="editPost.do", method=RequestMethod.POST)
	public String editPost(int id, Integer inReplyTo, String message) {
		dao.editPost(id, inReplyTo, message);
		
		return "redirect:home.do";
		
	}

}
