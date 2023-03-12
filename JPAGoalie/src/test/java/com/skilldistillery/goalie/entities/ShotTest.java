package com.skilldistillery.goalie.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ShotTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	
	private Shot shot;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAGoalie");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		//use this actor to test each time
		shot = em.find(Shot.class,1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		shot=null;
	}

	@Test
	void test_shot_entity_from_db() {
		assertNotNull(shot);
		System.out.println(shot);
		assertEquals(false,shot.isScreen());
	}
	
	@Test
	void test_shot_entity_mappings() {
		assertNotNull(shot);
		String query = "SELECT s FROM Shot s";
		List<Shot> shots = em.createQuery(query,Shot.class).getResultList();
		for(Shot s : shots) {
			System.out.println(s);
		}
		assertEquals(10,shots.size());
	}

}
