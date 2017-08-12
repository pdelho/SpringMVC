package com.journaldev.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.journaldev.model.Person;
import com.journaldev.repository.PersonDAO;

@Component
public class SimplePersonManager implements PersonManager {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
    private PersonDAO personDAO;
	
	 public void setProductDao(PersonDAO personDAO) {
	        this.personDAO = personDAO;	 
	 }


	public List<Person> getPersons() {
		return personDAO.getPersonList(); 
	}


	@Override
	public void saverPerson(Person person) {
		personDAO.savePerson(person);
		
	}




}
