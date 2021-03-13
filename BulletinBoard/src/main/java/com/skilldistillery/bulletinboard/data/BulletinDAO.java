package com.skilldistillery.bulletinboard.data;

import com.skilldistillery.bulletinboard.entities.Bulletin;

public interface BulletinDAO {
	
	Bulletin findById(int bulletinId);
	

}
