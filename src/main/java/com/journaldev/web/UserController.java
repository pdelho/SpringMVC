package com.journaldev.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.journaldev.model.User;

@Controller
public class UserController {

	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String login(@Validated User user, Model model) {
		model.addAttribute("userName", user.getUserName());
		return "user";
	}
}
