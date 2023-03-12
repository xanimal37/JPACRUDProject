package com.skilldistillery.goalie.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.goalie.entities.Shot;

@Service
@Transactional
public class ShotDAOImpl implements ShotDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Shot getShotById(int id) {
		return em.find(Shot.class,id);
	}
	
	@Override
	public List<Shot> getAllShots() {
		List<Shot> shots = null;
		String query = "SELECT s FROM Shot s";
		shots = em.createQuery(query,Shot.class).getResultList();
		return shots;
	}

	@Override
	@Transactional
	public Shot create(Shot shot) {
		// TODO Auto-generated method stub
		em.persist(shot);
		return shot;
		
	}

	@Override
	@Transactional
	public Shot update(int id, Shot shot) {
		// TODO Auto-generated method stub
		//shot needs to be a managed object
		shot = em.find(Shot.class, id);
		return null;
	}

	@Override
	@Transactional
	public boolean delete(int shotId) {
		Shot shot = em.find(Shot.class, shotId);
		em.remove(shot);
		shot = em.find(Shot.class, shotId);
		if(shot==null) {	
			return true;
		}
		else {
			return false;
		}
	}
	
	//CALCULATION METHODS
	//calculate number of shots
	@Override
	public int getNumberOfShots() {
		List<Shot> shots =getAllShots();
		if(shots!=null && shots.size()>0) {
			return shots.size();
		}
		else {
			return 0;
		}
	}
	
	//calculate save percentage
	@Override
	public double getSavePercentage() {
		int numShots = getNumberOfShots();
		int numGoals = getNumberOfGoals();
		//cast to avoid 0.0
		double nonGoals = (double)numShots - (double)numGoals;
		double savePercentage = nonGoals/numShots;
		return savePercentage;
		
	}
	
	//calculate number of goals
	@Override
	public int getNumberOfGoals() {
		List<Shot> shots = getAllShots();
		int numGoals = 0;
		for(Shot s: shots) {
			if(s.isGoal()) {
				numGoals++;
			}
		}
		return numGoals;
	}
	
	//calculate total saves
	@Override 
	public int getNumberOfSaves() {
		List<Shot> shots = getAllShots();
		int numSaves = 0;
		for(Shot s: shots) {
			if(!s.isGoal()) {
				numSaves++;
			}
		}
		return numSaves;
	}
	
	//calculate goals against average (avg goals per game)
	public double getGoalsAgainstAverage() {
		double goals = (double)getNumberOfGoals();
		double gaa = goals/getNumberOfGames();
		return gaa;
	}
	
	//calculate number of games
	//is there a better way to do this??? can do a regulgar query with
	//count distinct?
	public int getNumberOfGames() {
		List<Shot> shots = getAllShots();
		int gameCount = 0;
		for(Shot s: shots) {
			if(s.getGameId()>gameCount) {
				gameCount++;
			}
		}
		return gameCount;
	}
}