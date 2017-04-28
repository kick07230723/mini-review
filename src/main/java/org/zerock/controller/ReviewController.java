package org.zerock.controller;


import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.domain.ReplyVO;
import org.zerock.domain.ReviewVO;
import org.zerock.service.ReplyService;
import org.zerock.service.ReviewService;

@RequestMapping("/review/*")
@Controller
public class ReviewController {

	private static final Logger logger = Logger.getLogger(ReviewController.class);
	
	@Autowired
	ReviewService service;
	
	@Autowired
	ReplyService Rservice;
	
	
	@GetMapping("/list")
	public void getList(@ModelAttribute("cri") Criteria cri,Model model) throws Exception{
		
		List<ReviewVO> list= service.listAll(cri);
		
		System.out.println("cri!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"+cri);
		model.addAttribute("list",list);
		model.addAttribute("cri",cri);
		model.addAttribute("pageMaker",new PageMaker(cri, service.listCount(cri)));
		
	
	}
	
	@PostMapping("/list")
	public String getPost(@RequestParam("deleteNum") int rno)throws Exception{
		
		System.out.println("deleteNum =============== " + rno);
		
		service.delete(rno);
		
		return "redirect:/review/list";
		
	}
	
	
	@GetMapping("/content")
	public void getContentList(@RequestParam("rno") int rno, Model model)throws Exception{
		
		
		List<ReviewVO> list = service.contentRead(rno);
		List<ReplyVO> Rlist = Rservice.readReply(rno);
		
		model.addAttribute("contentList",list);
		model.addAttribute("ReplyList",Rlist);
		
		
	}
	
	@PostMapping("/content")
	public String getContentList(ReviewVO vo)throws Exception{
		service.update(vo);
		
		return "redirect:/review/list";
	}
	
	
	@GetMapping("/register")
	public void create(){
		
		
	}
	
	@PostMapping("/register")
	public String create(ReviewVO vo ) throws Exception{
		
		
		service.create(vo);
		
		return "redirect:/review/list";
	}
	

	
}
