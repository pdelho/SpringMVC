package com.journaldev.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.model.Person;
import com.journaldev.service.PersonManager;

@Controller("/person")
public class PersonsController {
	
	@Autowired
    private PersonManager personManager;
	
	@RequestMapping(value = "/persons", method = RequestMethod.GET)
	public String persons(Model model) {		
		List<Person> persons = personManager.getPersons();
		model.addAttribute("persons", persons);
		return "persons";

	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		return "register";

	}
	
	@RequestMapping(value = "/person", method = RequestMethod.POST)
	public String persons(@Validated Person person, Model model) {
		// Create the person 
		Person newPerson = new Person (person.getFirstName(), person.getLastName(), person.getDescription(), person.getAge());
		// Save it
		personManager.saverPerson(newPerson);
		// Get all persons and present them
		List<Person> persons = personManager.getPersons();
		model.addAttribute("persons", persons);
		return "persons";

	}

}
