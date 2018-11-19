package net.skhu;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index(Model model) {
		model.addAttribute("message","좋은 아침");
		model.addAttribute("now",new Date());
		return "index";
	}

	@RequestMapping("/directive")
	public String directive(Model model){
		return "directive";
	}

	@RequestMapping("/hw3")
	public String hw3(Model model) {
		return "hw3";
	}
}
