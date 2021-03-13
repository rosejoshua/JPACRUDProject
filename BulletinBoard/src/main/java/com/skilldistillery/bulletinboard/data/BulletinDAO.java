package com.skilldistillery.bulletinboard.data;

import java.util.List;

import com.skilldistillery.bulletinboard.entities.Bulletin;

public interface BulletinDAO {
	
	Bulletin findById(int bulletinId);
	
	List<Bulletin> showAllByAuthor(String author);
	List<Bulletin> showAll();
	
	void addPost(Bulletin bulletin);
	
}
