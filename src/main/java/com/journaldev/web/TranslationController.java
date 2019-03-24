package com.journaldev.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.service.Translation;

@Controller
public class TranslationController {
	
	private static final Logger logger = LoggerFactory.getLogger(NavigationController.class);
	
	@RequestMapping(value = "/translate-groefnish", method = RequestMethod.GET)
	public String translation(Model model) {
		return "groefnia/translation/input";

	}
	
	@RequestMapping(value = "/translation", method = RequestMethod.POST)
	public String translation(@Validated Translation translation, Model model) {
		logger.info("The text to be translated is {}.",translation.getTranslation());
		model.addAttribute("textToBeTranslated", translation.getTranslation());
		String textTranslated = translation.translateToGroefnish();
		model.addAttribute("textTranslated", textTranslated);
		
		return "groefnia/translation/result";
	}

}
