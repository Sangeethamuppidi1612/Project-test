package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MainController {


	@RequestMapping("/form")
	
	public String form()
	{
	
	return "static/test.html";
	
}

	@RequestMapping("/mainpage")
	
	public String mainpage()
	{
	
	return "static/MainPage.html";
	
}

	
	@RequestMapping("/test_save")
	@ResponseBody
	public String save(@RequestParam("ttl")String title,@RequestParam("dirc")String director){

		Test test=new Test(title,director);
		testrepo.save(test);
		return "Record Saved Successfully";
		
	
			
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public List<Test> all() {
		return (List<Test>)testrepo.findAll();
	}
		
		@RequestMapping("/retrieve")
		@ResponseBody
		public List<Test> userretrieve(@RequestParam("id")long id)
		{
			return (List<Test>)testrepo.findById(id);
		}
	
		@RequestMapping("/test_update")
		@ResponseBody
		public String update(@RequestParam("id")long id,
				@RequestParam("ttl")String title,@RequestParam("dirc")String director){
			
			//Test test=new Test(title,director);
			//testrepo.save(test);
			
			Test up=testrepo.findOne(id);
			up.setTitle(title);
			up.setDirector(director);
			testrepo.save(up);
			
			return "Updated";
		
		}	
		
		
	@Autowired
	private TestRepository testrepo;
}
