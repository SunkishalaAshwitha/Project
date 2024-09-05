package com.example.PROJECT;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class Rest {
	@GetMapping("/login")
	public String login() 
	{
		return "login";
	}
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	@GetMapping("/ContactUs")
	public String ContactUs(){
		return "ContactUs";
	}
	@GetMapping("/AboutUs")
	public String AboutUs() {
		return "AboutUs";
	}
	@GetMapping("/register")
	public String Register() {
		return "register";
	}
	@GetMapping("/Billing")
	  public String Billing() {
	    return "Billing";
	  }
	@GetMapping("/creative")
	  public String Creative() {
	    return "creative";
	  }
	@GetMapping("/uploadCreative")
	  public String uploadCreative() {
	    return "uploadCreative";
	  }
	@GetMapping("/Productive")
	  public String Productive() {
	    return "Productive";
	  }
	@GetMapping("/Technical")
	  public String Technical() {
	    return "Technical";
	  }
}
