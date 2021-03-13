package com.skilldistillery.bulletinboard.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class BulletinTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Bulletin bulletin;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BulletinBoard");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		bulletin = em.find(Bulletin.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		bulletin = null;
	}

	@Test
	@DisplayName("Test Bulletin Entity Mapping")
	void test() {
		assertNotNull(bulletin);
		assertEquals("Josh", bulletin.getAuthor());
		assertEquals("This is a post!", bulletin.getPost());
	}

}
