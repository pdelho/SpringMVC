package com.journaldev.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.model.Person;
import com.journaldev.service.PersonManager;

@Controller
public class PersonsController {

	@Autowired
	private PersonManager personManager;


	/**
	 * READ ALL PERSONS
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/persons", method = RequestMethod.GET)
	public String persons(Model model) {		
		List<Person> persons = personManager.getPersons();
		model.addAttribute("persons", persons);
		return "groefnia/person/all";

	}

	// To register a person, first you get the form
	/**
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/person/add", method = RequestMethod.GET)
	public String addPerson(Model model) {
		return "groefnia/person/add";

	}

	/**
	 * SAVE A PERSON
	 * @param person
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/person", method = RequestMethod.POST)
	public String savePerson(@Validated Person person, Model model) {

		boolean existPerson;
		if (personManager.getPersonById(person.getId()) == null) existPerson = false;
		else existPerson = true;
		if(!existPerson){
			// Create a new one and save it
			Person newPerson = new Person (person.getFirstName(), person.getLastName(), person.getDescription(), person.getAge());
			// Save it
			personManager.savePerson(newPerson);		
		} else {
			Person updatedPerson = personManager.getPersonById(person.getId());
			updatedPerson.setFirstName(person.getFirstName());
			updatedPerson.setLastName(person.getLastName());
			updatedPerson.setDescription(person.getDescription());
			updatedPerson.setAge(person.getAge());
			personManager.savePerson(updatedPerson);
		}
		

		// Get all persons and render them
		List<Person> persons = personManager.getPersons();
		model.addAttribute("persons", persons);
		return "groefnia/person/all";

	}

	// To update or read a person, first we get a form with the details of the person
	@RequestMapping(value = "/person/{id}", method = RequestMethod.GET)
	public String personForm(@PathVariable int id, Model model) {
		Person existingPerson = personManager.getPersonById(id);
		model.addAttribute("person", existingPerson);
		return "groefnia/person/details";

	}
	
	// To delete a person
	@RequestMapping(value = "/person/delete/{id}", method = RequestMethod.GET)
	public String personDeleteForm(@PathVariable int id, Model model) {
		Person deletedPerson = personManager.getPersonById(id);
		personManager.deletePerson(deletedPerson);
		// Get all persons and render them
		List<Person> persons = personManager.getPersons();
		model.addAttribute("persons", persons);
		return "groefnia/person/all";

	}
}
