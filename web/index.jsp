<%-- 
    Document   : index
    Created on : Dec 15, 2022, 4:52:48 PM
    Author     : Ferdian Iqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" href="/images/logo.svg">
        <title>Blog</title>
        <link rel="stylesheet" href="./css/bootstrap.css">
        <link rel="stylesheet" href="./css/frontend.css">
    </head>

    <body>
        <%@page import="com.javatpoint.data.BlogData,com.javatpoint.bean.*,java.util.*"%>  
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
        <%
            List<Blog> list = BlogData.getAllRecords();
            request.setAttribute("list", list);
        %>  

        <nav class="navbar navbar-expand-lg p-0 fixed-top" id="my-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    Blog
                </a>

                <%if (session.getAttribute("user") != null) { %>
                <div class="dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">

                        Hello, <%out.println(session.getAttribute("user"));%>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="./Blog/viewblogs.jsp"><i class="bi bi-journals"></i> Dashboard</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <form action="logout.jsp" method="POST">
                                <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-right"></i>
                                    Logout</button>
                            </form>
                        </li>
                    </ul>
                </div>
                <%} else {%>
                <a class="btn-custom-primary" href="./login.jsp">
                    Login
                </a>
                <%}%>
            </div>
        </nav>

        <div class="home" id="home">
            <section class="hero" id="hero">
                <div class="container">
                    <div class="row justify-content-center align-items-center">
                        <p class="text-quote text-center">
                            ”Education is the most powerful weapon which you can use to change the world.”
                            <br> <span> -Nelson Mandela</span>
                        </p>
                        <div class="hero-img">                        
                            <img src="./images/hero.jpg" alt="" class="img-fluid img-hero">
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <section class="author-choice" id="author-choice">
            <div class="container">
                <div class="home-header-section-group d-flex justify-content-between align-items-center">
                    <h2 class="home-section-title mb-5 text-center d-block mx-auto">All Posts</h2>
                </div>
                <div class="row justify-content-center align-items-center row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">

                    <% if (!list.isEmpty()) { %>

                    <c:forEach items="${list}" var="u">
                        <div class="col">
                            <div class="card h-100 card-post">
                                <div class="card-post-body">
                                    <p class="card-post-title">${u.getTitle()}</p>
                                    <a href="details.jsp?id=${u.getId()}" class="nav-link card-post-link">Read More <i
                                            class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <%} else {%>
                    <p class="section-text text-center">No Post</p>
                    <%}%>
                </div>
            </div>
        </section>

        <footer>
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <p class="footer-heading text-center">Reach Us Out</p>
                    <div class="col-sm-1 col">
                        <a href="/" class="nav-link footer-link">
                            <i class="bi bi-instagram"></i>
                        </a>
                    </div>
                    <div class="col-sm-1 col">
                        <a href="/" class="nav-link footer-link">
                            <i class="bi bi-github"></i>
                        </a>
                    </div>
                    <div class="col-sm-1 col">
                        <a href="/" class="nav-link footer-link">
                            <i class="bi bi-linkedin"></i>
                        </a>
                    </div>
                    <div class="col-sm-1 col">
                        <a href="/" class="nav-link footer-link">
                            <i class="bi bi-twitter"></i>
                        </a>
                    </div>
                    <div class="col-sm-1 col">
                        <a href="/" class="nav-link footer-link">
                            <i class="bi bi-envelope"></i>
                        </a>
                    </div>
                </div>

                <p class="text-center footer-cop">© BLog 2022</p>
            </div>
        </footer>
        <script src="./js/bootstrap.bundle.js" defer></script>
    </body>

</html>
