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
		model.addAttribute("bulletinBoard", bulletinBoard);
		return "index";
	}
	
	@RequestMapping(path="getAllAuthor.do")
	public String showAuthor(String author, Model model) {
		List<Bulletin> board = dao.showAllByAuthor(author);
		model.addAttribute("authorBoard", board);
		model.addAttribute("author", author);
		return "board/author";
	
	}
	
	@RequestMapping(path="edit.do", method=RequestMethod.GET)
	public String edit(Integer postId, Model model) {
		Bulletin bulletin = dao.findById(postId);
		model.addAttribute("bulletin", bulletin);
		return "board/edit";
		
	}
	
	@RequestMapping(path="addPost.do", method=RequestMethod.POST)
	public String addPost(String author, Integer inReplyTo, String post) {
		if (inReplyTo.intValue()==0) {
			Bulletin bulletin = new Bulletin(author, null, post);			
			dao.addPost(bulletin);
		}
		else {			
			Bulletin bulletin = new Bulletin(author, inReplyTo, post);			
			dao.addPost(bulletin);
		}
		return "redirect:home.do";
		
	}
	
	@RequestMapping(path="editPost.do", method=RequestMethod.POST)
	public String editPost(Integer postId, String post) {
		dao.editPost(postId.intValue(), post);
		
		return "redirect:home.do";
		
	}

	@RequestMapping(path="deletePost.do", method=RequestMethod.POST)
	public String deletePost(Integer postId) {
		dao.deletePost(postId.intValue());
		
		return "redirect:home.do";
		
	}


}
