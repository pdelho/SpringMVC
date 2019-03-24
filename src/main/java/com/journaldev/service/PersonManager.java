package com.journaldev.service;

import java.io.Serializable;
import java.util.List;

import com.journaldev.model.Person;


public interface PersonManager extends Serializable{
	
	public Person getPersonById(long id);
	
    public List<Person> getPersons();
    
    public void savePerson(Person person);
    
    public void deletePerson(Person person);

}
