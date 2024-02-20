package com.ECommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ECommerce.model.Cart;
import com.ECommerce.model.Credentials;
import com.ECommerce.repository.CartRepository;
import com.ECommerce.repository.CredentialsRepository;

@Controller
public class LogInController {

	@Autowired
	private CredentialsRepository credRepo;
	
	@Autowired
	private CartRepository cartRepo;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String SignupView()
	{
		return "SignUpLogInjsp";
	}
	
	
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public String SignUpView(@RequestParam String signupUsername,
			@RequestParam String signupPassword,@RequestParam String role)
	{
		Credentials cred=new Credentials(signupUsername,signupPassword,role);
		credRepo.save(cred);
		
		return "redirect:log-in";
	}
	
	@RequestMapping(value="/log-in",method=RequestMethod.GET)
	public String LoginView()
	{
		return "LogInView";
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String LogInView(@RequestParam String loginUsername,
			@RequestParam String loginPassword,@RequestParam String role,Model model)
	{
		
		
		if(role.equalsIgnoreCase("admin"))
		{
			
			boolean user=credRepo.existsByUserName(loginUsername);
			boolean passW=credRepo.existsByPassWord(loginPassword);
			boolean rolee=credRepo.existsByRole(role);
			
			boolean chk=false;
			List<Credentials>l=credRepo.findByUserName(loginUsername);
			
			for(Credentials i:l)
			{
				if(i.getRole().equalsIgnoreCase("admin"))
				{
					chk=true;
				}
			}
			
			if(user && passW && rolee && chk)
			{
				return "redirect:view-laptop";
			}
			
			model.addAttribute("error", "Invalid Credentials");
			 return "LogInView";
			
			
		}
		
		else {
			
			boolean user=credRepo.existsByUserName(loginUsername);
			boolean passW=credRepo.existsByPassWord(loginPassword);
			boolean rolee=credRepo.existsByRole(role);
			
			boolean chk=false;
			List<Credentials>l=credRepo.findByUserName(loginUsername);
			
			for(Credentials i:l)
			{
				if(i.getRole().equalsIgnoreCase("user"))
				{
					chk=true;
				}
			}
			
			if(user && passW && rolee && chk)
			{
				String url="redirect"+":"+"user-home"+"/"+loginUsername;
				
				boolean cartchk=cartRepo.existsByUserName(loginUsername);
				
				if(cartchk==false){
					Cart cart=new Cart();
					cart.setUserName(loginUsername);
					cartRepo.save(cart);
				}
					return url;
				
				
			}
			
			model.addAttribute("error", "Invalid Credentials");
			return "LogInView";
			
			
		}
		
		
	}
	
	
}
