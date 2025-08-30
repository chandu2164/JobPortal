package com.example.Jobportal.Project;

import com.example.Jobportal.Project.model.JobPost;
import com.example.Jobportal.Project.service.Jobservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Webcontroller {
@Autowired
    private Jobservice service;

    @GetMapping({"/","home"})
    public String homemethod(){
        System.out.println("home");
        return "home";
    }

    @GetMapping("addjob")
    public String addJob(){
        System.out.println("added");
        return "addjob";
    }


    @PostMapping("handleForm")
    public String handleform(JobPost jobPost){
        System.out.println("jaya");
        service.addJobFromServer(jobPost);
        return "addedjob";
    }


    @GetMapping("viewalljobs")
    public String viewJobs(Model m) {
        List<JobPost> jobs = service.getAllJobs();
        m.addAttribute("jobPosts", jobs);   
System.out.println("view");
        return "viewalljobs";
    }

}
