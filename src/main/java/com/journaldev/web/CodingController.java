package com.journaldev.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CodingController {


	/*
	 * jQuery Part
	 */
	@RequestMapping(value = "/coding/jQuery", method = RequestMethod.GET)
	public String getJQuery(Model model) {
		return "coding/jQuery";

	}
	
	@RequestMapping(value = "/jQuery/{nExercise}", method = RequestMethod.GET)
	public String getJQueryN(Model model, @PathVariable String nExercise) {
		return "coding/jQuery/" + nExercise;

	}
}
