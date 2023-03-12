package com.skilldistillery.goalie.data;

import java.util.List;

import com.skilldistillery.goalie.entities.Shot;

public interface ShotDAO {

	Shot getShotById(int id);
	
	List<Shot> getAllShots();
	
	Shot create(Shot shot);
	
	Shot update(int id, Shot shot);
	
	boolean delete();
	
	// ******************* stat methods
	
	int getNumberOfShots();
	
	int getNumberOfGoals();
	
	int getNumberOfSaves();
	
	double getSavePercentage();
	
	double getGoalsAgainstAverage();
	
	int getNumberOfGames();
}