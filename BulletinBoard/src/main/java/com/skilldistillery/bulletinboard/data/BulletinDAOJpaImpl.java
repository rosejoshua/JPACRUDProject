package com.skilldistillery.bulletinboard.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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
		return em.find(Bulletin.class, bulletinId);
	}

	@Override
	public List<Bulletin> showAllByAuthor(String author) {
		String jpql = "SELECT b FROM Bulletin b WHERE b.author = '" + author + "'";
		return em.createQuery(jpql, Bulletin.class).getResultList();
	}

	@Override
	public List<Bulletin> showAll() {
		String jpql = "SELECT b FROM Bulletin b";
		return em.createQuery(jpql, Bulletin.class).getResultList();
	}

	@Override
	public void addPost(Bulletin bulletin) {
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("BulletinBoard");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(bulletin);
		em.getTransaction().commit();

		
	}

	@Override
	public void editPost(int id, Integer inReplyTo, String message) {
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("BulletinBoard");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Bulletin b = em.find(Bulletin.class, id);
		b.setPost(message);
		b.setInReplyTo(inReplyTo);
		b.setIsEdited(true);
		em.getTransaction().commit();

		
	}
	
	

}
