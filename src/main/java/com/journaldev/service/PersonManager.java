package com.journaldev.service;

import java.io.Serializable;
import java.util.List;

import com.journaldev.model.Person;


public interface PersonManager extends Serializable{
	
    public List<Person> getPersons();
    
    public void saverPerson(Person person);

}
