package com.journaldev.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class NavigationController {

	private static final Logger LOG = LoggerFactory.getLogger(NavigationController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		Locale locale = new Locale("en_US");
		LOG.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );
		return "index";
	}

//	@RequestMapping(value = "/about", method = RequestMethod.GET)
//	public String about(Model model) {
//		return "about";
//
//	}
	
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Model model) {
		return "contact";

	}
	
	@RequestMapping(value = "/cv", method = RequestMethod.GET)
	public String cv(Model model) {
		return "cv";

	}

}