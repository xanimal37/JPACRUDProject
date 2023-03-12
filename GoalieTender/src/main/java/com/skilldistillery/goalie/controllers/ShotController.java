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
		//get the data
		//this goes in the stats bar at the top of every page
		int gamesPlayed = shotDAO.getNumberOfGames();
		double savePercentage = shotDAO.getSavePercentage();
		double gaa = shotDAO.getGoalsAgainstAverage();
		int sog = shotDAO.getNumberOfShots();
		int saves = shotDAO.getNumberOfSaves();
		int goals = shotDAO.getNumberOfGoals();
		List<Shot> shots = shotDAO.getAllShots();
		
		mv.addObject("totalGamesPlayed",gamesPlayed);
		mv.addObject("savePercentage",savePercentage);
		mv.addObject("goalsAgainstAverage",gaa);
		mv.addObject("totalShotsOnGoal",sog);
		mv.addObject("totalSaves",saves);
		mv.addObject("totalGoals",goals);
		// add the list object for the table
		mv.addObject("shots",shots);
		
		mv.setViewName("index");
		return mv;
	}
	
	//adding a shot
	@PostMapping(path = "addShot.do")
	public ModelAndView newShot(Shot shot) {
		shotDAO.create(shot);
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("add");
		  return mv;
	}
	
	//selecting a shot to update or delete
	@RequestMapping(path = "update.do", params = "shotId",method = RequestMethod.GET)
	public ModelAndView modify(@RequestParam("shotId") int id){
		ModelAndView mv = new ModelAndView();
		Shot shot = shotDAO.getShotById(id);
		mv.addObject("shot", shot);
		mv.setViewName("update");
		return mv;
	}
	
	
	//page directs ******************************************
	@GetMapping(path ="addShot.do")
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("add");
		return mv;
	}
	
}
