package com.journaldev.model;

public class Team {
	
	private static int count = 0; 
	
	private int id;
	
	private String name;

	private String group;
	
	private int position;
	
	private String country;
	
	public Team (String name, String group, int position, String country){
		this.id = ++count;
		this.name = name;
		this.setGroup(group);
		this.setPosition(position);
		this.setCountry(country);
	}

	public int getId() {
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
	
	public String getGroup() {
		return group;
	}

	public void setGroup(String group) {
		this.group = group;
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
	
	public String toSring(){
		return "Team id: " + this.id + ". Group: " + this.group + ". Position: " + "" + this.position;
	}


}
