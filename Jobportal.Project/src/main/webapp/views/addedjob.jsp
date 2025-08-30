<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.example.Jobportal.Project.model.JobPost" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">

    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f2f5f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background: linear-gradient(to right, #6a11cb, #2575fc);
        }

        .navbar-brand {
            font-weight: 600;
            color: #fff !important;
        }

        .nav-link {
            color: #e0e0e0 !important;
        }

        .nav-link:hover {
            color: #ffffff !important;
        }

        .container h2 {
            color: #333;
            font-weight: 700;
        }

        .card {
            background-color: #ffffff;
            border: none;
            border-radius: 16px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: scale(1.01);
        }

        .card-body {
            padding: 35px;
        }

        .card-title {
            font-size: 1.8rem;
            font-weight: 600;
            color: #2c3e50;
        }

        .card-text {
            font-size: 1rem;
            color: #555;
            margin-bottom: 20px;
        }

        ul {
            padding-left: 20px;
        }

        ul li {
            margin-bottom: 6px;
        }

        .card-footer {
            background-color: #f8f9fa;
            border-top: 1px solid #eee;
            text-align: center;
            font-size: 0.9rem;
            color: #777;
            padding: 15px;
        }

        .btn-back {
            margin-top: 30px;
            display: block;
            text-align: center;
        }

        .btn-back a {
            text-decoration: none;
            color: #fff;
            background-color: #2575fc;
            padding: 10px 20px;
            border-radius: 8px;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }

        .btn-back a:hover {
            background-color: #1a5edb;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand fs-3" href="#">Job Portal</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<div class="container mt-5">
    <h2 class="mb-4 text-center">Job Post Details</h2>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><%= myJobPost.getPostProfile() %></h5>
                    <p class="card-text">
                        <strong>Description:</strong><br>
                        <%= myJobPost.getPostDesc() %>
                    </p>
                    <p class="card-text">
                        <strong>Experience Required:</strong>
                        <%= myJobPost.getReqExperience() %> years
                    </p>
                    <p class="card-text">
                        <strong>Tech Stack:</strong>
                        <ul>
                            <% for (String tech : myJobPost.getPostTechStack()) { %>
                                <li><%= tech %></li>
                            <% } %>
                        </ul>
                    </p>
                </div>
                <div class="card-footer">
                    Posted via Job Portal
                </div>
            </div>
            <div class="btn-back">
                <a href="viewalljobs">← Back to All Jobs</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>