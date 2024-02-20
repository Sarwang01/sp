package com.ECommerce.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ECommerce.model.Cart;
import com.ECommerce.model.Laptop;
import com.ECommerce.repository.CartRepository;
import com.ECommerce.repository.LaptopRepository;

@Controller
public class UserController {

	@Autowired
	private CartRepository cartRepo;
	
	@Autowired
	private LaptopRepository lapRepo;
	
	@RequestMapping(value="/user-home/{username}",method=RequestMethod.GET)
	private String HomeView(@PathVariable String username,Model model)
	{
		List<Laptop>laptops=lapRepo.findAll();
		model.addAttribute("laptops", laptops);
		model.addAttribute("username",username);
		return "HomePage";
	}
	
	
	
	@RequestMapping(value="add-cart/user-home/{username}",method=RequestMethod.GET)
	private String HomeVieww(@PathVariable String username,Model model)
	{
		List<Laptop>laptops=lapRepo.findAll();
		model.addAttribute("laptops", laptops);
		model.addAttribute("username",username);
		return "HomePage";
	}
	
	@RequestMapping(value="/view-cart/{username}",method=RequestMethod.GET)
	public String cartView(@PathVariable String username,Model model)
	{
		Cart cart=cartRepo.getByUserName(username);
		model.addAttribute(cart);
		
		List<Laptop> Llist=cart.getLaptops();
		long totalprice=0;
		for(Laptop l:Llist)
		{
			totalprice+=Long.parseLong(l.getPrice());
		}
		cart.setTotalPrice(Long.toString(totalprice));
		return "CartView";
	}
	
	@RequestMapping(value="/deleted-cart/{username}",method=RequestMethod.POST)
	public String delteFromCart(@PathVariable String username,@RequestParam String laptopId,Model model)
	{
		
		System.out.print(username);
		String u=username;
		Cart cart=cartRepo.getByUserName(username);
	    Long id=	Long.parseLong(laptopId);
         
		List<Laptop>l1=cart.getLaptops();
		List<Laptop>l2=new ArrayList<>();
		
		for(Laptop laptop:l1) {
			if(laptop.getlId()!=id) {
				l2.add(laptop);
			}
		}
		
		cart.setLaptops(l2);
		List<Laptop> Llist=cart.getLaptops();
		long totalprice=0;
		for(Laptop l:Llist)
		{
			totalprice+=Long.parseLong(l.getPrice());
		}
		cart.setTotalPrice(Long.toString(totalprice));
		cartRepo.save(cart);
		
		model.addAttribute(cart);
	    return "CartView";		
		
	}
//	@GetMapping("/cart/removeItem/{index}")
//	public String cartItemRemove(@PathVariable int index) {
//		GlobalData.cart.remove(index);
//		return "redirect:/cart";
//	}
//	
	@RequestMapping(value="/view-cart/removeItem/{index}",method=RequestMethod.GET)
	public String cartItemRemove(@PathVariable int index)
	{
	      long f = (long)index;
		cartRepo.deleteById(f);
		System.out.println("index" + index);
		return "redirect:/CartView";
	}
	
	
	
	@RequestMapping(value="/add-cart/{username}",method=RequestMethod.POST)
	public String addCart(@PathVariable String username,@RequestParam String laptopId)
	{
		
		
		Cart cart=cartRepo.getByUserName(username);
		
		Laptop laptop=lapRepo.getById(Long.parseLong(laptopId));
		
			cart.getLaptops().add(laptop);
		
		
		cartRepo.save(cart);
		
		String url="redirect"+":"+"user-home"+"/"+username;
	    return url;		
		
	}
	
	
	@RequestMapping(value="/delete-cart/{username}",method=RequestMethod.GET)
	public String deleteCart()
	{
		return "DeleteCart";
	}
	
	@RequestMapping(value="/delete-cart/{username}",method=RequestMethod.POST)
	public String deleteCarts(@RequestParam String cId)
	{
		cartRepo.deleteById(Long.parseLong(cId));
		
		return "DeleteCart";
	}
	
	
	
}
