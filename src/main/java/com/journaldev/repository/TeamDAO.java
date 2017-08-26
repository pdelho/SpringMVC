package com.journaldev.repository;

import java.util.List;

import com.journaldev.model.Team;

public interface TeamDAO {

	public Team getTeamById(long id);
	
	public List<Team> getTeamList();
	
	public List<Team> getTeamsInGroup(String letter);
}
