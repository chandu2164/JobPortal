package com.example.Jobportal.Project.service;

import com.example.Jobportal.Project.model.JobPost;
import com.example.Jobportal.Project.repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class Jobservice {

    @Autowired
    private JobRepo repo;

    public  void addJobFromServer(JobPost jobP){
        System.out.println("laxmi");
        repo.addJobFromRepo(jobP);

    }

        public List<JobPost> getAllJobs(){
        return  repo.getAllJobs();
        }
}
