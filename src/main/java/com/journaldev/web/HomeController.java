package com.journaldev.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.model.Person;
import com.journaldev.service.PersonManager;
import com.journaldev.service.Translation;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	
	@Autowired
    private PersonManager personManager;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );
		
//		Person Kim = new Person("Kim", "Molinos", "Con muletas", 80);	
//		model.addAttribute("Kim", Kim);
		
		List<Person> persons = personManager.getPersons();
		model.addAttribute("persons", persons);

		return "home";
	}

	@RequestMapping(value = "/translation", method = RequestMethod.POST)
	public String translation(@Validated Translation translation, Model model) {
		logger.info("The text to be translated is {}.",translation.getTranslation());
		model.addAttribute("textToBeTranslated", translation.getTranslation());
		String textTranslated = translation.translateToGroefnish();
		model.addAttribute("textTranslated", textTranslated);
		
		return "translation";
	}




}