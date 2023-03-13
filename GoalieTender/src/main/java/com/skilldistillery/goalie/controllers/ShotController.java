package com.skilldistillery.goalie.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.goalie.data.ShotDAO;
import com.skilldistillery.goalie.entities.Shot;

@Controller
public class ShotController {

	@Autowired
	private ShotDAO shotDAO;

	@GetMapping(path = { "/", "index.do" })
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		// get the data
		// this goes in the stats bar at the top of every page
		int gamesPlayed = shotDAO.getNumberOfGames();
		double savePercentage = shotDAO.getSavePercentage();
		double gaa = shotDAO.getGoalsAgainstAverage();
		int sog = shotDAO.getNumberOfShots();
		int saves = shotDAO.getNumberOfSaves();
		int goals = shotDAO.getNumberOfGoals();
		List<Shot> shots = shotDAO.getAllShots();

		mv.addObject("totalGamesPlayed", gamesPlayed);
		mv.addObject("savePercentage", savePercentage);
		mv.addObject("goalsAgainstAverage", gaa);
		mv.addObject("totalShotsOnGoal", sog);
		mv.addObject("totalSaves", saves);
		mv.addObject("totalGoals", goals);
		// add the list object for the table
		mv.addObject("shots", shots);

		mv.setViewName("index");
		return mv;
	}

	// adding a shot
	@PostMapping(path = "addShot.do")
	public ModelAndView newShot(Shot shot) {
		shotDAO.create(shot);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("add");
		return mv;
	}

	// selecting a shot to update or delete
	@RequestMapping(path = "update.do", params = "shotId", method = RequestMethod.GET)
	public ModelAndView modify(@RequestParam("shotId") int id) {
		ModelAndView mv = new ModelAndView();
		Shot shot = shotDAO.getShotById(id);
		if (shot != null) {
			mv.addObject(shot);
		} else {
			mv.addObject("message", "could not find shot");
		}

		// get the data
		// this goes in the stats bar at the top of every page
		int gamesPlayed = shotDAO.getNumberOfGames();
		double savePercentage = shotDAO.getSavePercentage();
		double gaa = shotDAO.getGoalsAgainstAverage();
		int sog = shotDAO.getNumberOfShots();
		int saves = shotDAO.getNumberOfSaves();
		int goals = shotDAO.getNumberOfGoals();

		mv.addObject("totalGamesPlayed", gamesPlayed);
		mv.addObject("savePercentage", savePercentage);
		mv.addObject("goalsAgainstAverage", gaa);
		mv.addObject("totalShotsOnGoal", sog);
		mv.addObject("totalSaves", saves);
		mv.addObject("totalGoals", goals);

		mv.setViewName("update");
		return mv;
	}

	// delete a shot
	@RequestMapping(path = "update.do", method = RequestMethod.POST, params = "delete")
	public ModelAndView deleteShot(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		boolean wasDeleted = shotDAO.delete(id);
		String result = null;
		if (wasDeleted) {
			result = "shot was deleted";
		} else {
			result = "shot was not deleted";
		}
		mv.addObject("message", result);
		return mv;
	}

	// update a shot
	@RequestMapping(path = "update.do", method = RequestMethod.POST, params = "update")
	public ModelAndView updateShot(
			@RequestParam("id") int id, 
			@RequestParam("gameId") int gameId,
			@RequestParam(name="goal",defaultValue = "false") boolean goal, 
			@RequestParam(name="low",defaultValue = "false") boolean low,
			@RequestParam(name="rebound",defaultValue = "false") boolean rebound, 
			@RequestParam(name="screen",defaultValue="false") boolean screen,
			@RequestParam("situation") String situation, 
			@RequestParam("note") String note,
			@RequestParam("saveSelection") String saveSelection, 
			@RequestParam("zone") String zone) {

		
		Shot updatedShot = shotDAO.update(id, gameId, goal, low, rebound, screen, situation, note, saveSelection,zone);

		// do, result
		ModelAndView mv = new ModelAndView();
		String result = null;

		if (updatedShot != null) {
			result = "shot updated";
		} else {
			result = "shot update failed";
		}
		mv.addObject("message", result);
		return mv;
	}

	// page directs ******************************************
	@GetMapping(path = "addShot.do")
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView();

		// get the data
		// this goes in the stats bar at the top of every page
		int gamesPlayed = shotDAO.getNumberOfGames();
		double savePercentage = shotDAO.getSavePercentage();
		double gaa = shotDAO.getGoalsAgainstAverage();
		int sog = shotDAO.getNumberOfShots();
		int saves = shotDAO.getNumberOfSaves();
		int goals = shotDAO.getNumberOfGoals();

		mv.addObject("totalGamesPlayed", gamesPlayed);
		mv.addObject("savePercentage", savePercentage);
		mv.addObject("goalsAgainstAverage", gaa);
		mv.addObject("totalShotsOnGoal", sog);
		mv.addObject("totalSaves", saves);
		mv.addObject("totalGoals", goals);
		mv.setViewName("add");
		return mv;
	}

}
