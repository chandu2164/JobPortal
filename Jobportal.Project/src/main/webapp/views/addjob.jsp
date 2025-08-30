<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Portal</title>

    <!-- Updated Bootstrap: Dark Theme -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">

    <!-- Custom Embedded CSS -->
    <style>
        body {
            background-color: #1e1e2f;
            color: #f0f0f0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background-color: #2c2f4a;
        }

        .navbar-brand {
            color: #ffffff !important;
            font-weight: 600;
        }

        .nav-link {
            color: #dcdcdc !important;
        }

        .nav-link:hover {
            color: #ffffff !important;
        }

        .card {
            background-color: #2c2f4a;
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        }

        .card-body {
            padding: 30px;
        }

        .form-label {
            font-weight: 500;
            color: #f0f0f0;
        }

        .form-control, .form-select {
            background-color: #3a3f5c;
            border: 1px solid #555;
            color: #ffffff;
        }

        .form-control:focus, .form-select:focus {
            border-color: #007bff;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 6px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        h2 {
            color: #ffffff;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand fs-1" href="#">Job Portal Web App</a>
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

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-body">
                    <h2 class="mb-4 text-center">Post a New Job</h2>
                    <form action="handleForm" method="post">
                        <div class="mb-3">
                            <label for="postId" class="form-label">Post ID</label>
                            <input type="text" class="form-control" id="postId" name="postId" required>
                        </div>

                        <div class="mb-3">
                            <label for="postProfile" class="form-label">Post Profile</label>
                            <input type="text" class="form-control" id="postProfile" name="postProfile" required>
                        </div>

                        <div class="mb-3">
                            <label for="postDesc" class="form-label">Post Description</label>
                            <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="reqExperience" class="form-label">Required Experience</label>
                            <input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
                        </div>

                        <div class="mb-3">
                            <label for="postTechStack" class="form-label">Tech Stack</label>
                            <select multiple class="form-select" id="postTechStack" name="postTechStack" required>
                                <option value="Java">Java</option>
                                <option value="JavaScript">JavaScript</option>
                                <option value="Python">Python</option>
                                <option value="Spring Boot">Spring Boot</option>
                                <option value="Docker">Docker</option>
                                <option value="Kubernetes">Kubernetes</option>
                                <option value="AWS">AWS</option>
                                <option value="React">React</option>
                                <option value="Angular">Angular</option>
                                <option value="Node.js">Node.js</option>
                                <!-- Add more as needed -->
                            </select>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Submit Job</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>