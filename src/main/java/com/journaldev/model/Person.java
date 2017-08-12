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
	
	@Column(name = "firstname")
	private String firstName;
 
	@Column(name = "lastname")
	private String lastName;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "age")
	private int age;
	
	protected Person(){
		
	}
	
	public Person (String firstname, String lastName, String description, int age){
		this.firstName = firstname;
		this.lastName = lastName;
		this.description = description;
		this.age = age;
	}
	
	@Override
	public String toString() {
		return String.format("Person[id=%d, firstName='%s', lastName='%s']", id, firstName, lastName);
	}

}
