package com.johnathonbowers.dojosninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.johnathonbowers.dojosninjas.models.Dojo;
import com.johnathonbowers.dojosninjas.models.Ninja;
import com.johnathonbowers.dojosninjas.services.DojoService;
import com.johnathonbowers.dojosninjas.services.NinjaService;

@Controller
public class MainController {

	@Autowired
	DojoService dojoService;
	
	@Autowired
	NinjaService ninjaService;
	
	@GetMapping("/dojos/new")
	public String createDojoForm(@ModelAttribute("dojo") Dojo dojo) {
		return "/dojos/new.jsp";
	}
	
	@PostMapping("/dojos/new")
	public String createDojoAction(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
			return "/dojos/new.jsp";
		} else {
			dojoService.createDojo(dojo);
			return "redirect:/dojos/new";
		}
	}
	
	@GetMapping("/ninjas/new")
	public String createNinjaForm(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dojoService.allDojos());
		return "/ninjas/new.jsp";
	}
	
	@PostMapping("/ninjas/new")
	public String createNinjaAction(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if (result.hasErrors()) {
			return "/ninjas/new.jsp";
		} else {
			ninjaService.createNinja(ninja);
			return "redirect:/ninjas/new";
		}
	}
	
	@GetMapping("/dojos/{dojoId}")
	public String displayDojo(@PathVariable("dojoId") Long dojoId, Model model) {
		model.addAttribute("dojo", dojoService.findDojo(dojoId));
		return "/dojos/displayDojo.jsp";
	}
	
}
