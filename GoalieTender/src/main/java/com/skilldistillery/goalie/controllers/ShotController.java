package com.skilldistillery.goalie.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
		int gamesPlayed = shotDAO.getNumberOfGames();
		double savePercentage = shotDAO.getSavePercentage();
		double gaa = shotDAO.getGoalsAgainstAverage();
		int sog = shotDAO.getNumberOfShots();
		int saves = shotDAO.getNumberOfSaves();
		int goals = shotDAO.getNumberOfGoals();
		
		mv.addObject("totalGamesPlayed",gamesPlayed);
		mv.addObject("savePercentage",savePercentage);
		mv.addObject("goalsAgainstAverage",gaa);
		mv.addObject("totalShotsOnGoal",sog);
		mv.addObject("totalSaves",saves);
		mv.addObject("totalGoals",goals);
		// return "WEB-INF/index.jsp";
		
		mv.setViewName("index");
		return mv;
	}
	
	//page directs ******************************************
	@GetMapping(path ="addShot.do")
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("add");
		return mv;
	}
	
	@GetMapping(path="updateShot.do")
	public ModelAndView update() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update");
		return mv;
	}
	
	@GetMapping(path="deleteShot.do")
	public ModelAndView delete() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("delete");
		return mv;		
	}


}
