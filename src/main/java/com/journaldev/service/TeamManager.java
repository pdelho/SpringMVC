package com.journaldev.service;

import java.io.Serializable;
import java.util.List;

import com.journaldev.model.Team;

public interface TeamManager extends Serializable{
	
	public Team getTeamById(long id);
	
	public List<Team> getTeams();
	
	public List<Team> getTeamsByGroup(String letter);
	
	

}
