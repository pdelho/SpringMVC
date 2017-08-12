package com.journaldev.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "persons")
public class Person implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Column(name = "firstName")
	private String firstName;
 
	@Column(name = "lastName")
	private String lastName;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "age")
	private int age;
	
	protected Person(){
		
	}
	
	public Person (String firstName, String lastName, String description, int age){
		this.firstName = firstName;
		this.lastName = lastName;
		this.description = description;
		this.age = age;
	}
	
	@Override
	public String toString() {
		return String.format("Person[id=%d, firstName='%s', lastName='%s']", id, firstName, lastName);
	}
	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getAge(){
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
