package net.skhu;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index(Model model) {
		//System.out.println("인덱스");
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

	@RequestMapping("/listRendering")
	public String listRendering(Model model) {
		return "listRendering";
	}

	@RequestMapping("/upvote")
	public String upvote(Model model) {
		return "upvote";
	}

	@RequestMapping("/calculator")
	public String calculator(Model model) {
		return "calculator";
	}

	@RequestMapping("/hw5")
	public String hw5(Model model) {
		return "hw5";
	}

	@RequestMapping("/filter")
	public String filter(Model model) {
		return "filter";
	}

	@RequestMapping("/filterSearch")
	public String filterSearch(Model model) {
		return "filterSearch";
	}

	@RequestMapping("/filterOrder")
	public String filterOrder(Model model) {
		return "filterOrder";
	}

	@RequestMapping("/customfilter")
	public String customfilter(Model model) {
		return "customfilter";
	}

	@RequestMapping("/utilityLibrary")
	public String utilityLibrary(Model model) {
		return "utilityLibrary";
	}

	@RequestMapping("/hw6")
	public String hw6(Model model) {
		return "hw6";
	}

	@RequestMapping("/component")
	public String component(Model model) {
		return "component";
	}

	@RequestMapping("/voteSystem")
	public String voteSystem(Model model) {
		return "voteSystem";
	}

	@RequestMapping("/hw7")
	public String hw7(Model model) {
		return "hw7";
	}
}
