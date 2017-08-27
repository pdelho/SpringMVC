package com.journaldev.web;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.common.collect.Lists;
import com.journaldev.model.Match;
import com.journaldev.model.Team;
import com.journaldev.model.TeamForm;
import com.journaldev.service.DrawCalculator;
import com.journaldev.service.TeamManager;

@Controller
public class TeamsController {

	@Autowired
	private TeamManager teamManager;

	private static List<Team> teams = new ArrayList<Team>();

	@RequestMapping(value = "/champions", method = RequestMethod.GET)
	public String championsSimulator(Model model) {
		// Define the form
		TeamForm teamForm = new TeamForm();
		// If the least of teams is empty, find All and add them
		if(teams.isEmpty()){
			List<Team> allTeams = teamManager.getTeams();
			Iterator<Team> allTeamsIterator = allTeams.iterator();
			while(allTeamsIterator.hasNext()){
				teams.add(allTeamsIterator.next());
			}
		}

		// Add the list of teams to the form
		teamForm.setTeams(teams);

		// Add the form
		model.addAttribute("teamForm", teamForm);
		return "champions/simulator";

	}


	@RequestMapping(value = "/simulation", method = RequestMethod.POST)
	public String resultSimulation(@ModelAttribute("teamForm") TeamForm teamForm, Model model) {
		// String result
		String result = "";
		// Form input
		List<Team> teams = teamForm.getTeams();
		String isHeroku = teamForm.getIsHeroku();
		String preProcessed = teamForm.getPreProcessed();

		// Results when top A and B
		if(preProcessed.equals("topAB")){
			result = DrawCalculator.getTopAB();
		}
		// Results when top rated
		if(preProcessed.equals("bestRating")){
			result = DrawCalculator.getBestRating();
		}
		// If not results pre-proccesed
		if(preProcessed.equals("none")){
			Iterator<Team> teamsIterator = teams.iterator();
			// Take first and second
			List<Collection<Team>> bestSixteen = new ArrayList<Collection<Team>>();
			Collection<Team> firsts = new ArrayList<Team>();
			Collection<Team> seconds = new ArrayList<Team>();
			while(teamsIterator.hasNext()){
				Team team = teamsIterator.next();
				// If is Heroku, take only E, F, G and H
				if (isHeroku != null){
					if (isHeroku.equals("heroku")){
						if(team.getGroupChar().equals("E") || team.getGroupChar().equals("F") || team.getGroupChar().equals("G") || team.getGroupChar().equals("H")){
							if (team.getPosition()==1) firsts.add(team);
							if (team.getPosition()==2) seconds.add(team);
						}
					}
					// Otherwise take all
				} else {
					if (team.getPosition()==1) firsts.add(team);
					if (team.getPosition()==2) seconds.add(team);
				}

			}
			bestSixteen.add(firsts);
			bestSixteen.add(seconds);
			// Get the possible matches
			Collection<List<Team>> matchesAsCollection = Lists.newLinkedList();
			matchesAsCollection =  DrawCalculator.getMatches(bestSixteen);
			// Get the list
			List<Match> listOfMatches = new ArrayList<Match>();
			Iterator<List<Team>> matchIteratorAux = matchesAsCollection.iterator();
			while(matchIteratorAux.hasNext()){
				Collection<Team> draw = (Collection<Team>) matchIteratorAux.next();
				Iterator<Team> teamIterator = draw.iterator();
				while(teamIterator.hasNext()){
					Team teamLocal = (Team) teamIterator.next();
					Team teamVisitor = (Team) teamIterator.next();
					listOfMatches.add(new Match (teamLocal, teamVisitor));
				}
			}

			// Get the draws
			List<Set<Match>> draws;
			draws = DrawCalculator.getSubsets(listOfMatches, (int) Math.sqrt(listOfMatches.size()));

			// Calculate the chances
			Map<String, Double> chances = new HashMap<String,Double>();
			chances = DrawCalculator.calculateChances(draws);

			// Print them
			SortedSet<String> keys = new TreeSet<String>(chances.keySet());
			DecimalFormat df = new DecimalFormat("#.##");
			String locals = "";
			String visitors = "";
			for (String key : keys){
				String local = key.substring(0, key.indexOf('-'));
				String visitor = key.substring(key.indexOf('-')+1);
				// if the current team is not found in the locals string, add it
				if(locals.indexOf(local) < 0) locals += local + '\n';
				if(visitors.indexOf(visitor) < 0) visitors += visitor + '\n';
				System.out.println("The chances of " + key + " facing each other is: " + df.format(chances.get(key)*100/draws.size()) + "%");
				result+="The chances of " + key + " facing each other is: " + df.format(chances.get(key)*100/draws.size()) + "%" + "<br>";

			}
		}

		// Add the result to the model and charge it
		model.addAttribute("result", result);
		return "champions/result";
	}


}
