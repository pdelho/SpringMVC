package com.journaldev.repository;

import java.util.List;

import com.journaldev.model.Person;



public interface PersonDAO {
	
	public Person getPersonById(long id);

	public List<Person> getPersonList();

    public void savePerson(Person person);
    
    public void deletePerson(Person person);
    
}
