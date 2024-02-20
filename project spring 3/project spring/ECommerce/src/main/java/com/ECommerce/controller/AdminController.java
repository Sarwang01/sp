package com.ECommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ECommerce.model.Laptop;
import com.ECommerce.repository.LaptopRepository;

@Controller

public class AdminController {

	@Autowired
	private LaptopRepository lapRepo;
	
	
//	@RequestMapping(value="/view-laptop",method=RequestMethod.GET)
	@GetMapping (value="/view-laptop")
	
	public String viewLaptop(Model model)
	{
		List<Laptop> laptops=lapRepo.findAll();
		model.addAttribute("laptops", laptops);
		
		return "AdminHome";
	}
	
	
	@RequestMapping(value="/add-Laptop",method=RequestMethod.GET)
	public String addLaptop()
	{
		return "AddLaptops";
	}
	
	@RequestMapping(value="/add-Laptop",method=RequestMethod.POST)
	public String addLaptopp(@RequestParam String LId,@RequestParam String brand,
			String model,@RequestParam String link,
			@RequestParam String price)
	{
		Laptop laptop=new Laptop(Long.parseLong(LId),brand,model,link,price);
		
		lapRepo.save(laptop);
		
		
		return "redirect:view-laptop";
	}
	
	
	
	@RequestMapping(value="/delete-laptop",method=RequestMethod.GET)
	public String deleteLaptop()
	{
		return "DeleteLaptops";
	}
	
	@RequestMapping(value="/delete-laptop",method=RequestMethod.POST)
	public String deleteLaptops(@RequestParam String lId)
	{
		lapRepo.deleteById(Long.parseLong(lId));
		
		return "redirect:view-laptop";
	}
	
	
	
}
