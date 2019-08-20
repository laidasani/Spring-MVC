package samplepackage;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	//controller nethod to show the initial form
	@RequestMapping("/showForm")
	public String showPage() {
		return "helloworld-form";
	}

	//controller method to process form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionTwo")
	public String capsConverter(HttpServletRequest request, Model model) {
		String theName=request.getParameter("studentName");
		 theName=theName.toUpperCase();
		 
		 String result= "Yo! "+theName;
		 
		 model.addAttribute("message",result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")
	public String version3(@RequestParam("studentName") String theName, Model model) {
		
		 theName=theName.toUpperCase();
		 
		 String result= "Yo! from v3 "+theName;
		 
		 model.addAttribute("message",result);
		
		return "helloworld";
	}
}
