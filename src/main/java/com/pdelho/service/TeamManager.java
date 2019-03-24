package com.pdelho.service;

import java.io.Serializable;
import java.util.List;

import com.pdelho.model.Team;

public interface TeamManager extends Serializable{
	
	public Team getTeamById(long id);
	
	public List<Team> getTeams();
	
	public List<Team> getTeamsByGroup(String letter);
	
	

}
