package com.journaldev.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TeamForm {
	
	private List<Team> teams;
	
	private String isHeroku;
	
	private String preProcessed = "none";
	
	public TeamForm(){
		
	}
	
	public List<Team> getTeams() {
		return teams;
	}

	public void setTeams(List<Team> teams) {
		this.teams = teams;
	}

	public String getIsHeroku() {
		return isHeroku;
	}

	public void setIsHeroku(String isHeroku) {
		this.isHeroku = isHeroku;
	}
	
	public List<Team> getTeamsForHeroku() {
		List<Team> teamsForHeroku = new ArrayList<Team>();
		Iterator<Team> iteratorTeamsForHeroku = teamsForHeroku.iterator();
		while (iteratorTeamsForHeroku.hasNext()){
			//Only take E, F, G and H
			Team team = iteratorTeamsForHeroku.next();
			if (team.getGroupChar()=="E" || team.getGroupChar()=="F" || team.getGroupChar()=="G" || team.getGroupChar()=="H") teamsForHeroku.add(team);
		}
		
		return teamsForHeroku;
	}

	public String getPreProcessed() {
		return preProcessed;
	}

	public void setPreProcessed(String preProcessed) {
		this.preProcessed = preProcessed;
	}



}
