package com.skilldistillery.bulletinboard.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.bulletinboard.entities.Bulletin;

@Service
@Transactional
public class BulletinDAOJpaImpl implements BulletinDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Bulletin findById(int bulletinId) {
		// TODO Auto-generated method stub
		return em.find(Bulletin.class, bulletinId);
	}
	
	

}
