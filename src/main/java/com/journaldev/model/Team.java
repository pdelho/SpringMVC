package com.journaldev.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "teams")
public class Team {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "name")
	private String name;

	@Column(name = "groupChar")
	private String groupChar;
	
	@Column(name = "position")
	private int position;
	
	@Column(name = "country")
	private String country;
	
	@Column(name = "rating")
	private int rating;
	
	public Team(){
		
	}

	public Team (String name, String groupChar, int position, String country, int rating){
		this.name = name;
		this.setGroupChar(groupChar);
		this.setPosition(position);
		this.setCountry(country);
		this.rating = rating;
	}

	public long getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getGroupChar() {
		return groupChar;
	}

	public void setGroupChar(String groupChar) {
		this.groupChar = groupChar;
	}

	public int getPosition() {
		return position;
	}

	public void setPosition(int position) {
		this.position = position;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}
	
	public String toSring(){
		return "Team id: " + this.id + ". Group: " + this.groupChar + ". Position: " + "" + this.position;
	}


}
