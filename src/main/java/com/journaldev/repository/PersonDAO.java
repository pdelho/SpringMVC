package com.journaldev.repository;

import java.util.List;

import com.journaldev.model.Person;



public interface PersonDAO {

	public List<Person> getPersonList();

    public void savePerson(Person person);
}
