package com.skilldistillery.goalie.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Shot {
	
	public Shot() {
	
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "shot_id")
	private int shotId;
	private boolean screen;
	private boolean goal;
	@Column(name="save_selection")
	private String saveSelection;
	private boolean low;
	private String zone;
	private String note;
	private String situation;
	private boolean rebound;
	@Column(name="game_id")
	private int gameId;
	
	public int getGameId() {
		return gameId;
	}

	public void setGameId(int gameId) {
		this.gameId = gameId;
	}

	public int getShotId() {
		return shotId;
	}

	public void setShotId(int shotId) {
		this.shotId= shotId;
	}

	public boolean isScreen() {
		return screen;
	}

	public void setScreen(boolean screen) {
		this.screen = screen;
	}
	
	public boolean isGoal() {
		return goal;
	}
	
	public void setGoal(boolean goal) {
		this.goal = goal;
	}

	public String getSaveSelection() {
		return saveSelection;
	}

	public void setSaveSelection(String saveSelection) {
		this.saveSelection = saveSelection;
	}

	public boolean isLow() {
		return low;
	}

	public void setLow(boolean low) {
		this.low = low;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getSituation() {
		return situation;
	}

	public void setSituation(String situation) {
		this.situation = situation;
	}

	public boolean isRebound() {
		return rebound;
	}

	public void setRebound(boolean rebound) {
		this.rebound = rebound;
	}

	@Override
	public String toString() {
		return "Shot [shotId=" + shotId + ", screen=" + screen + ", goal=" + goal + ", saveSelection=" + saveSelection
				+ ", low=" + low + ", zone=" + zone + ", note=" + note + ", situation=" + situation + ", rebound="
				+ rebound + "]";
	}

	

	
	
}
