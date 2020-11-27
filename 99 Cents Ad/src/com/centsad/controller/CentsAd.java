package com.centsad.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.centsad.entity.Customer;
import com.centsad.entity.PaymentInfo;
import com.centsad.entity.Queries;
import com.centsad.entity.Reviews;
import com.centsad.services.CustomerService;

@Controller
@RequestMapping("/")
public class CentsAd {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/frontPage")
	public String firstPage(HttpServletRequest request, Model theModel) {
		Customer customer = new Customer();
		Queries queries = new Queries();
		theModel.addAttribute("questions", queries);
		theModel.addAttribute("customer", customer );
		return "frontPage";
	}
	
	@PostMapping("/addCustomer")
	public String addCustomer(@ModelAttribute("customer")Customer customer, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		customerService.saveCustomers(customer);
		String email = customer.getEmail();
		session.setAttribute("user", email);
		int id = customer.getId();
		session.setAttribute("id", id);		
		return "redirect:/frontPage";
	}
	
	@PostMapping("/contactForm")
	public String contactForm(@ModelAttribute("questions")Queries queries) {
		customerService.saveQueries(queries);
		return "redirect:/frontPage";
	}
	
	@GetMapping("/services")
	public String service(Model theModel) {
		Customer customer = new Customer();
		PaymentInfo payment = new PaymentInfo();
		theModel.addAttribute("customer", customer);
		theModel.addAttribute("payment", payment);
		return "service";
	}
	
	@PostMapping("/addPayment")
	public String addPayment(@ModelAttribute("payment")PaymentInfo payment){
		customerService.savePayment(payment);
		return "redirect:/services";
	}
	
	@GetMapping("/review")
	public String clients(HttpServletRequest request, Model theModel) {
		HttpSession session = request.getSession(true);
		List<Reviews> reviewCust = customerService.getReviews();
		session.setAttribute("reviewCustomer", reviewCust);
		Customer customer = new Customer();
		Reviews reviews = new Reviews();
		theModel.addAttribute("review", reviews);
		theModel.addAttribute("customer", customer);
		return "review";
	}
	
	@PostMapping("/addReview")
	public String addReview( @ModelAttribute("review")Reviews review, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		int id = (int) session.getAttribute("id");
		System.out.println(id);
		customerService.saveReviews(review, id);
		return "redirect:/review";
	}
}
