package com.para.glider3.addfiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PicturesCotnroller {

	public PicturesCotnroller() {

	}

	@RequestMapping("/pictures")
	public String showPictures(Model model) {
		model.addAttribute("picture", "resources/addedImages/1.jpg");

		return "pictures";
	}

}
