<%-- 
    Document   : details
    Created on : Dec 15, 2022, 8:00:37 PM
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
        <%@page import="com.javatpoint.data.BlogData,com.javatpoint.bean.Blog"%> 
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
        <%
            String id = request.getParameter("id");
            Blog u = BlogData.getRecordById(Integer.parseInt(id));
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


        <div class="detail-post" id="detail-post">
    <section class="detail-post-content" id="detail-post-content">
      <div class="container">
        <h2 class="detail-post-title">Detail Post</h2>

        <div class="row justify-content-center align-items-center mx-auto">
          <div class="col-lg-8 col-md-10">
            <p class="detail-post-title text-center"><%= u.getTitle()%></p>

            <div class="detail-post-body">
              <%= u.getBody()%>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

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
