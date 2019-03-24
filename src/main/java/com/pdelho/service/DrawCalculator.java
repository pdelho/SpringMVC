package com.pdelho.service;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

import com.google.common.collect.Lists;
import com.pdelho.model.Match;
import com.pdelho.model.Team;

public class DrawCalculator {


	static Team A1 = new Team ("Arsenal", 			"A", 1, "en", 3);
	static Team A2 = new Team ("PSG", 				"A", 2, "fr", 4);
	static Team B1 = new Team ("Napoli",			"B", 1, "it", 3);
	static Team B2 = new Team ("Benfica",			"B", 2, "pt", 2);
	static Team C1 = new Team ("Barcelona", 		"C", 1, "es", 5);
	static Team C2 = new Team ("Mancheste City",	"C", 2, "en", 4);
	static Team D1 = new Team ("Atletico", 			"D", 1, "es", 4);
	static Team D2 = new Team ("Bayern Munchen",	"D", 2, "de", 5);
	static Team E1 = new Team ("Monaco",			"E", 1, "fr", 3);
	static Team E2 = new Team ("Bayer Leverkusen",	"E", 2, "de", 2);
	static Team F1 = new Team ("Borussia Dortmund",	"F", 1, "de", 4);
	static Team F2 = new Team ("Real Madrid",		"F", 2, "es", 5);
	static Team G1 = new Team ("Leicester",			"G", 1, "en", 2);
	static Team G2 = new Team ("Porto",				"G", 2, "pt", 3);
	static Team H1 = new Team ("Juventus",			"H", 1, "it", 5);
	static Team H2 = new Team ("Sevilla",			"H", 2, "es", 3);


	/**
	 * Generate all combinations from multiple lists. 
	 * @param collections, the list of lists which are combined. In this case, a list of teams
				Input example 
					X: [A, B, C] 
					Y: [W, X, Y, Z]
	 * @return all the possible permutations. In this case, a list of matches (team+team)
	 			Output example
	 				[AW, AX, AY, AZ, BW, BX, BY, BZ, CW, CX, CY, CZ]
	 */
	public static <T> Collection<List<T>> getMatches(List<Collection<T>> collections) {
		if (collections == null || collections.isEmpty()) {
			return Collections.emptyList();
		} else {
			Collection<List<T>> res = Lists.newLinkedList();
			permutationsImpl(collections, res, 0, new LinkedList<T>());
			return res;
		}
	}

	/** Recursive implementation for {@link #getMatches(List, Collection)} */
	private static <T> void permutationsImpl(List<Collection<T>> ori, Collection<List<T>> res, int d, List<T> current) {
		// if depth equals number of original collections, final reached, add and return
		if (d == ori.size()) {
			res.add(current);
			return;
		}

		// iterate from current collection and copy 'current' element N times, one for each element
		Collection<T> currentCollection = ori.get(d);
		for (T element : currentCollection) {
			List<T> copy = Lists.newLinkedList(current);
			copy.add(element);
			permutationsImpl(ori, res, d + 1, copy);
		}
	}

	/**
	 * Find all subsets of length k in an superset
	 * @param superSet the list of matches calculated
	 			Input {1,2,3,4,5...n}, being 1,2... a match
	 * @param k the lenght of the subset we are lloking for. 
	 			In round of 16 it would be 8 (find all 8 combinations of matches)
	 			In quarter-finals it would be 4 (find all 4 combinations of matches)
	 * @return a list of set of matches with all the possibilities
	 */
	public static List<Set<Match>> getSubsets(List<Match> superSet, int k) {
		List<Set<Match>> res = new ArrayList<Set<Match>>();
		getSubsets(superSet, k, 0, new HashSet<Match>(), res);
		return res;
	}

	private static void getSubsets(List<Match> superSet, int k, int idx, Set<Match> current,List<Set<Match>> solution) {
		//successful stop clause
		if (current.size() == k) {
			Iterator<Match> matchIterator = current.iterator();
			boolean isValid = true;
			List<Team> teamsDraw = new ArrayList<Team>();
			while(matchIterator.hasNext() && isValid){
				Match match = matchIterator.next();
				Team local = match.getLocal();
				Team visitor = match.getVisitor();
				// check if teams repeated in a subset
				if (teamsDraw.contains(local) || teamsDraw.contains(visitor)) isValid = false;
				// check if teams are in the same group)
				if (local.getGroupChar().equals(visitor.getGroupChar())) isValid = false;
				//check if same country countryIsValid
				if (local.getCountry().equals(visitor.getCountry())) isValid = false;
				teamsDraw.add(local);
				teamsDraw.add(visitor);

			}
			if(isValid) solution.add(new HashSet<Match>(current));
			return;
		}
		//unseccessful stop clause
		if (idx == superSet.size()) return;
		Match x = superSet.get(idx);
		current.add(x);
		//"guess" x is in the subset
		getSubsets(superSet, k, idx+1, current, solution);
		current.remove(x);
		//"guess" x is not in the subset
		getSubsets(superSet, k, idx+1, current, solution);
	}

	public static Map<String,Double> calculateChances(List<Set<Match>> input){
		Map<String, Double> output = new HashMap<String,Double>();
		Iterator<Set<Match>> drawIterator = input.iterator();
		while(drawIterator.hasNext()){
			Set<Match> draw = drawIterator.next();
			Iterator<Match> matchIterator = draw.iterator();
			while(matchIterator.hasNext()){
				Match match = matchIterator.next();
				Team local = match.getLocal();
				Team visitor = match.getVisitor();
				// the id of the map will be X1Y2
				String id = local.getName() + "-" + visitor.getName();
				double value = (Double) output.get(id) == null ? 1.0 : output.get(id)+1;
				output.put(id, value);
			}



		}
		return output;
	}

	public static String getTopAB(){
		return  "The chances of Bayern Munchen-Atletico Madrid facing each other is: 18,05%<br>"+
				"The chances of Bayern Munchen-Barcelona facing each other is: 16,85%<br>"+
				"The chances of Bayern Munchen-Manchester City facing each other is: 16,1%<br>"+
				"The chances of Bayern Munchen-Manchester Utd. facing each other is: 16,36%<br>"+
				"The chances of Bayern Munchen-Porto facing each other is: 15,77%<br>"+
				"The chances of Bayern Munchen-Sevilla facing each other is: 16,85%<br>"+
				"The chances of Benfica-Atletico Madrid facing each other is: 17,87%<br>"+
				"The chances of Benfica-B. Dortmund facing each other is: 17,28%<br>"+
				"The chances of Benfica-Barcelona facing each other is: 16,85%<br>"+
				"The chances of Benfica-Manchester City facing each other is: 15,63%<br>"+
				"The chances of Benfica-PSG facing each other is: 15,51%<br>"+
				"The chances of Benfica-Sevilla facing each other is: 16,85%<br>"+
				"The chances of Chelsea-B. Dortmund facing each other is: 21,13%<br>"+
				"The chances of Chelsea-Barcelona facing each other is: 20,52%<br>"+
				"The chances of Chelsea-PSG facing each other is: 19,04%<br>"+
				"The chances of Chelsea-Porto facing each other is: 18,78%<br>"+
				"The chances of Chelsea-Sevilla facing each other is: 20,52%<br>"+
				"The chances of Juventus-Atletico Madrid facing each other is: 15,42%<br>"+
				"The chances of Juventus-B. Dortmund facing each other is: 14,83%<br>"+
				"The chances of Juventus-Manchester City facing each other is: 13,85%<br>"+
				"The chances of Juventus-Manchester Utd. facing each other is: 14,1%<br>"+
				"The chances of Juventus-PSG facing each other is: 13,68%<br>"+
				"The chances of Juventus-Porto facing each other is: 13,61%<br>"+
				"The chances of Juventus-Sevilla facing each other is: 14,5%<br>"+
				"The chances of Monaco-Atletico Madrid facing each other is: 17,91%<br>"+
				"The chances of Monaco-B. Dortmund facing each other is: 17,09%<br>"+
				"The chances of Monaco-Barcelona facing each other is: 16,76%<br>"+
				"The chances of Monaco-Manchester City facing each other is: 15,63%<br>"+
				"The chances of Monaco-Manchester Utd. facing each other is: 15,84%<br>"+
				"The chances of Monaco-Sevilla facing each other is: 16,76%<br>"+
				"The chances of Real Madrid-Manchester City facing each other is: 24,94%<br>"+
				"The chances of Real Madrid-Manchester Utd. facing each other is: 25,72%<br>"+
				"The chances of Real Madrid-PSG facing each other is: 24,54%<br>"+
				"The chances of Real Madrid-Porto facing each other is: 24,8%<br>"+
				"The chances of Shakhtar Donetsk-Atletico Madrid facing each other is: 15,33%<br>"+
				"The chances of Shakhtar Donetsk-B. Dortmund facing each other is: 14,83%<br>"+
				"The chances of Shakhtar Donetsk-Barcelona facing each other is: 14,5%<br>"+
				"The chances of Shakhtar Donetsk-Manchester Utd. facing each other is: 13,87%<br>"+
				"The chances of Shakhtar Donetsk-PSG facing each other is: 13,54%<br>"+
				"The chances of Shakhtar Donetsk-Porto facing each other is: 13,42%<br>"+
				"The chances of Shakhtar Donetsk-Sevilla facing each other is: 14,5%<br>"+
				"The chances of Spartak Moskow-Atletico Madrid facing each other is: 15,42%<br>"+
				"The chances of Spartak Moskow-B. Dortmund facing each other is: 14,83%<br>"+
				"The chances of Spartak Moskow-Barcelona facing each other is: 14,5%<br>"+
				"The chances of Spartak Moskow-Manchester City facing each other is: 13,85%<br>"+
				"The chances of Spartak Moskow-Manchester Utd. facing each other is: 14,1%<br>"+
				"The chances of Spartak Moskow-PSG facing each other is: 13,68%<br>"+
				"The chances of Spartak Moskow-Porto facing each other is: 13,61%<br>";
	}

	public static String getBestRating(){
		return  "The chances of Atletico Madrid-B. Dortmund facing each other is: 14,59%<br>"+
				"The chances of Atletico Madrid-Juventus facing each other is: 12,68%<br>"+
				"The chances of Atletico Madrid-Liverpool facing each other is: 16,5%<br>"+
				"The chances of Atletico Madrid-Manchester Utd. facing each other is: 16,5%<br>"+
				"The chances of Atletico Madrid-Monaco facing each other is: 12,68%<br>"+
				"The chances of Atletico Madrid-Napoli facing each other is: 14,17%<br>"+
				"The chances of Atletico Madrid-PSG facing each other is: 12,87%<br>"+
				"The chances of Barcelona-B. Dortmund facing each other is: 13,88%<br>"+
				"The chances of Barcelona-Chelsea facing each other is: 15,97%<br>"+
				"The chances of Barcelona-Liverpool facing each other is: 15,97%<br>"+
				"The chances of Barcelona-Manchester Utd. facing each other is: 15,97%<br>"+
				"The chances of Barcelona-Monaco facing each other is: 12,16%<br>"+
				"The chances of Barcelona-Napoli facing each other is: 13,73%<br>"+
				"The chances of Barcelona-PSG facing each other is: 12,31%<br>"+
				"The chances of Bayern Munchen-Chelsea facing each other is: 18,74%<br>"+
				"The chances of Bayern Munchen-Juventus facing each other is: 13,88%<br>"+
				"The chances of Bayern Munchen-Liverpool facing each other is: 18,74%<br>"+
				"The chances of Bayern Munchen-Manchester Utd. facing each other is: 18,74%<br>"+
				"The chances of Bayern Munchen-Monaco facing each other is: 13,88%<br>"+
				"The chances of Bayern Munchen-Napoli facing each other is: 16,02%<br>"+
				"The chances of Benfica-B. Dortmund facing each other is: 14,59%<br>"+
				"The chances of Benfica-Chelsea facing each other is: 16,5%<br>"+
				"The chances of Benfica-Juventus facing each other is: 12,68%<br>"+
				"The chances of Benfica-Liverpool facing each other is: 16,5%<br>"+
				"The chances of Benfica-Monaco facing each other is: 12,68%<br>"+
				"The chances of Benfica-Napoli facing each other is: 14,17%<br>"+
				"The chances of Benfica-PSG facing each other is: 12,87%<br>"+
				"The chances of Manchester City-B. Dortmund facing each other is: 28,47%<br>"+
				"The chances of Manchester City-Juventus facing each other is: 23,61%<br>"+
				"The chances of Manchester City-Monaco facing each other is: 23,61%<br>"+
				"The chances of Manchester City-PSG facing each other is: 24,32%<br>"+
				"The chances of Porto-B. Dortmund facing each other is: 13,88%<br>"+
				"The chances of Porto-Chelsea facing each other is: 15,97%<br>"+
				"The chances of Porto-Juventus facing each other is: 12,16%<br>"+
				"The chances of Porto-Liverpool facing each other is: 15,97%<br>"+
				"The chances of Porto-Manchester Utd. facing each other is: 15,97%<br>"+
				"The chances of Porto-Napoli facing each other is: 13,73%<br>"+
				"The chances of Porto-PSG facing each other is: 12,31%<br>"+
				"The chances of Real Madrid-Chelsea facing each other is: 16,31%<br>"+
				"The chances of Real Madrid-Juventus facing each other is: 12,31%<br>"+
				"The chances of Real Madrid-Liverpool facing each other is: 16,31%<br>"+
				"The chances of Real Madrid-Manchester Utd. facing each other is: 16,31%<br>"+
				"The chances of Real Madrid-Monaco facing each other is: 12,31%<br>"+
				"The chances of Real Madrid-Napoli facing each other is: 14%<br>"+
				"The chances of Real Madrid-PSG facing each other is: 12,45%<br>"+
				"The chances of Sevilla-B. Dortmund facing each other is: 14,59%<br>"+
				"The chances of Sevilla-Chelsea facing each other is: 16,5%<br>"+
				"The chances of Sevilla-Juventus facing each other is: 12,68%<br>"+
				"The chances of Sevilla-Manchester Utd. facing each other is: 16,5%<br>"+
				"The chances of Sevilla-Monaco facing each other is: 12,68%<br>"+
				"The chances of Sevilla-Napoli facing each other is: 14,17%<br>"+
				"The chances of Sevilla-PSG facing each other is: 12,87%<br>";
	}

	public static void main(String...args){

		long startTime = System.currentTimeMillis();
		System.out.println("Including teams");
		List<Collection<Team>> firstsAndSeconds = new ArrayList<Collection<Team>>();
		Collection<Team> firsts = new ArrayList<Team>();
		Collection<Team> seconds = new ArrayList<Team>();
		firsts.add(A1);
		firsts.add(B1);
		firsts.add(C1);
		firsts.add(D1);
		//		firsts.add(E1);
		//		firsts.add(F1);
		//		firsts.add(G1);
		//		firsts.add(H1);
		seconds.add(A2);
		seconds.add(B2);
		seconds.add(C2);
		seconds.add(D2);
		//		seconds.add(E2);
		//		seconds.add(F2);
		//		seconds.add(G2);
		//		seconds.add(H2);
		firstsAndSeconds.add(firsts);
		firstsAndSeconds.add(seconds);
		long stopTime = System.currentTimeMillis();
		long elapsedTime = stopTime - startTime;
		System.out.println("The elapsed so fare is: " + elapsedTime/1000.0 + "s");

		System.out.println("Calculatin the different matches");
		Collection<List<Team>> matchesAsCollection = Lists.newLinkedList();
		matchesAsCollection =  getMatches(firstsAndSeconds);
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

		Iterator<Match> matchIterator = listOfMatches.iterator();
		int i = 1;
		while(matchIterator.hasNext()){
			System.out.print("Match " + i++ + ": ");
			Match match = matchIterator.next();
			System.out.println(match.getLocal().getGroupChar() + "" + match.getLocal().getPosition() + "-" + match.getVisitor().getGroupChar() + "" + match.getVisitor().getPosition());
		}

		stopTime = System.currentTimeMillis();
		elapsedTime = stopTime - startTime;
		System.out.println("The elapsed time so far is: " + elapsedTime/1000.0 + "s");


		System.out.println("Calculating the diffent draws cominations. This is gonna take a while...");
		List<Set<Match>> draws;
		draws = getSubsets(listOfMatches, (int) Math.sqrt(listOfMatches.size()));
		// List<Set<Match>> draws;
		// draws = applyConditions(auxDraws);
		Iterator<Set<Match>> iteratorDraw = draws.iterator();
		int i1 = 1;
		while(iteratorDraw.hasNext()){
			System.out.println("Sorteo " + i1++ + ": ");
			Set<Match> draw = iteratorDraw.next();
			Iterator<Match> matchIterator2 = draw.iterator();
			while(matchIterator2.hasNext()){
				Match match = matchIterator2.next();
				System.out.println(match.getLocal().getGroupChar() + "" + match.getLocal().getPosition() + "-" + match.getVisitor().getGroupChar() + "" + match.getVisitor().getPosition());
			}
			System.out.println("-----------");
		}

		stopTime = System.currentTimeMillis();
		elapsedTime = stopTime - startTime;
		System.out.println("The elapsed so fare is: " + elapsedTime/1000.0 + "s");

		System.out.println("Calculating the probability of pairing teams");
		// id X1Y2, number
		Map<String, Double> chances = new HashMap<String,Double>();
		chances = calculateChances(draws);

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
			System.out.println("The chances of " + key + " facing each other is: " + df.format(chances.get(key)*100/draws.size()) + "% \n");
		}
		System.out.println(locals);
		System.out.println(visitors);
		stopTime = System.currentTimeMillis();
		elapsedTime = stopTime - startTime;
		System.out.println("The elapsed so fare is: " + elapsedTime/1000.0 + "s");

	}
}
