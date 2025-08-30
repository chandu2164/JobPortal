package com.example.Jobportal.Project.repo;

import com.example.Jobportal.Project.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@Repository
public class JobRepo {



    // ArrayList to store JobPost objects
    List<JobPost> jobs = new ArrayList<>(Arrays.asList(
            new JobPost(1, "Java Backend Developer",
                    "Design and develop scalable backend systems using Spring Boot and REST APIs",
                    3, List.of("Java", "Spring Boot", "REST APIs", "MySQL")),

            new JobPost(2, "React Frontend Engineer",
                    "Build dynamic user interfaces with React and Redux for high-performance web apps",
                    2, List.of("JavaScript", "React", "Redux", "Tailwind CSS")),

            new JobPost(3, "AI/ML Engineer",
                    "Develop machine learning models and deploy them using cloud platforms",
                    4, List.of("Python", "TensorFlow", "Scikit-learn", "AWS SageMaker")),

            new JobPost(4, "DevOps Specialist",
                    "Automate CI/CD pipelines and manage cloud infrastructure using modern DevOps tools",
                    5, List.of("Docker", "Kubernetes", "Jenkins", "Azure DevOps")),

            new JobPost(5, "Cybersecurity Analyst",
                    "Monitor and secure enterprise systems against vulnerabilities and threats",
                    3, List.of("Cybersecurity", "SIEM", "Firewalls", "Ethical Hacking")),

            new JobPost(6, "Mobile App Developer",
                    "Create cross-platform mobile apps using Flutter and integrate with backend services",
                    2, List.of("Flutter", "Dart", "Firebase", "REST APIs")),

            new JobPost(7, "Cloud Architect",
                    "Design cloud-native solutions and lead cloud migration strategies",
                    6, List.of("AWS", "Azure", "Google Cloud", "Terraform")),

            new JobPost(8, "UI/UX Designer",
                    "Craft intuitive user experiences and design wireframes for web and mobile platforms",
                    2, List.of("Figma", "Adobe XD", "User Research", "Prototyping")),

            new JobPost(9, "Blockchain Developer",
                    "Build decentralized applications and smart contracts using Ethereum",
                    3, List.of("Solidity", "Ethereum", "Web3.js", "Smart Contracts")),

            new JobPost(10, "Full Stack Developer",
                    "Work across frontend and backend to deliver complete web solutions",
                    4, List.of("Node.js", "Express", "React", "MongoDB"))
 ));


    public List<JobPost> getAllJobs(){
           return jobs;

    }

    public void addJobFromRepo(JobPost job){
        System.out.println("repo");

        jobs.add(job);
        System.out.println(jobs);


    }

}
