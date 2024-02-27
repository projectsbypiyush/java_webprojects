package com.travel.wonderworld.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.travel.wonderworld.dao.TravelDao;
import com.travel.wonderworld.entities.EnquiryEntity;
import com.travel.wonderworld.entities.EnquiryRequestEntity;
import com.travel.wonderworld.services.TravelService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MyController {
	
	@Autowired
	private TravelService tServ;
	private List<EnquiryEntity> list;
	private List<EnquiryRequestEntity> reqList;
	
	@GetMapping("/")
	public String home() {
		return "user.jsp";
	}

	@PostMapping("/log")
	public String login(String username, String password,HttpSession ses) {
		if(username.equals("piyush") && password.equals("piyush2003")) {
			ses.setAttribute("user", username);
			return "index.jsp";
		}
		else
			return "failure.jsp";
	}
	
	@GetMapping("/log")
	public String returnAdmin() {
		return "index.jsp";
	}
	
	@GetMapping("/visit")
	public String details() {
		return "details.jsp";
	}
	
	@GetMapping("/newenq")
	public String getEnqPage() {
		return "newenq.jsp";
	}
	
	@GetMapping("/login")
	public String getLoginPage(){
		return "login.jsp";
	}
	
	@GetMapping("/logout")
	public String userLogout(){
		return "logout.jsp";
	}
	
	@PostMapping("/addenq")
	public String addEnquiry(EnquiryEntity enq) {
		String status = tServ.addTravelEnquiry(enq);
		if(status=="success")
			return "success.jsp";
		else
			return "failure.jsp";
	}
	
	@GetMapping("/viewenq")
	public ModelAndView getEnquiries(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		list = tServ.getEnq();
		mv.addObject("enqlist",list);
		mv.setViewName("allenq.jsp");
		session.setAttribute("page", "enq");
		return mv;
	}
	
	@PostMapping("/enquiry")
	public String makeRequest(EnquiryRequestEntity e) {
		String status=tServ.makeRequest(e);
		if(status.equals("success"))
			return "success.jsp";
		else 
			return "failure.jsp";
	}
	
	@GetMapping("/viewreq")
	public ModelAndView getRequests(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		reqList = tServ.getRequests();
		mv.addObject("reqlist",reqList);
		mv.setViewName("allenq.jsp");
		session.setAttribute("page", "req");
		return mv;
	}
	
	@GetMapping("/remove/{id}")
	public ResponseEntity<HttpStatus> removeRequest(@PathVariable int id) {
		try {
			tServ.removeRequest(id);
			return new ResponseEntity<HttpStatus>(HttpStatus.OK);
		
	}catch(Exception e) {
		return new ResponseEntity<HttpStatus>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
		
	}
	
	@PostMapping("/search")
	public ModelAndView searchByName(String name,HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		List<EnquiryEntity> e = tServ.searchByName(name);
		mv.addObject("searchlist",e);
		mv.setViewName("allenq.jsp");
		session.setAttribute("sr", "search");
		return mv; 
		
		
	}
	
}
