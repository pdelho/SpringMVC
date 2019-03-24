package com.pdelho.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pdelho.model.Team;
import com.pdelho.repository.TeamDAO;

@Component
public class SimpleTeamManager implements TeamManager{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private TeamDAO teamDAO;

	public void setTeamDAO(TeamDAO teamDAO) {
		this.teamDAO = teamDAO;	 
	}

	@Override
	public Team getTeamById(long id) {
		return teamDAO.getTeamById(id);
	}

	@Override
	public List<Team> getTeams() {
		return teamDAO.getTeamList();
	}

	@Override
	public List<Team> getTeamsByGroup(String letter) {
		return teamDAO.getTeamsInGroup(letter);
	}

}
