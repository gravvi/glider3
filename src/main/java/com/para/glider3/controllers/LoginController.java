package com.para.glider3.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	

	//@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	@GetMapping("/Access_Denied")
	public String accessDenied(ModelMap model) {
		model.addAttribute("user", getAutentication());
		return "Security/accessDenied";
	}
	

	//@RequestMapping(value = "/admin", method = RequestMethod.GET)
	@GetMapping("/admin")
	public String admin(ModelMap model) {
		model.addAttribute("user", getAutentication());
		return "nowe/dodajPr";
	}

	//@RequestMapping(value = "/db", method = RequestMethod.GET)
	@GetMapping("/db")
	public String dba(ModelMap model) {
		model.addAttribute("user", getAutentication());
		return "Security/dba";
	}
	
	private String getAutentication(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	@RequestMapping(value = { "/welcome2" }, method = RequestMethod.GET)
	public String home(ModelMap model) {
		model.addAttribute("log", "Zaloguj siê jako: ");
		return "Security/Login";
	}
	
	//@RequestMapping(value="/logout", method = RequestMethod.GET)
	@GetMapping("/logout")
	public String logout (HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "nowe/home3";
	}

	//@RequestMapping(value = "/user", method = RequestMethod.GET)
	@GetMapping("/user")
	public String user(ModelMap model) {
		model.addAttribute("user", getAutentication());
		return "Security/user";
	}
}