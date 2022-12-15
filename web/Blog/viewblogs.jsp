<%-- 
    Document   : viewusers
    Created on : Dec 15, 2022, 10:53:25 AM
    Author     : Ferdian Iqbal
--%>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("./../index.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  

<html>  
    <head>  
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" href="/images/logo.svg">
        <title>Blog List</title>

        <link rel="stylesheet" href="./../css/bootstrap.css">
        <link rel="stylesheet" href="./../css/frontend.css">
        <link rel="stylesheet" href="//cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
        <style>
            .blog-list {
                padding-top: 5rem;
            }
        </style>
    </head>  
    <body>  

        <%@page import="com.javatpoint.data.BlogData,com.javatpoint.bean.*,java.util.*"%>  
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

        <nav class="navbar navbar-expand-lg p-0 fixed-top" id="my-navbar">
            <div class="container">
                <a class="navbar-brand" href="./../index.jsp">
                    Blog
                </a>

                <%if (session.getAttribute("user") != null) { %>
                <div class="dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">

                        Hello, <%out.println(session.getAttribute("user"));%>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="viewblogs.jsp"><i class="bi bi-journals"></i> Dashboard</a></li>
                        <li><a class="dropdown-item" href="./../index.jsp"><i class="bi bi-book"></i> Home</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <form action="./../logout.jsp" method="POST">
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

        <div class="blog-list container my-5"> 
            <h1 class="text-center mb-5">Blog List</h1>  

            <%if (session.getAttribute("status") != null) {%>
            <div class="alert alert-dismissible fade show <%
                if (session.getAttribute("status") == "1") {
                    out.println("alert-success");
                } else
                    out.println("alert-danger");
                 %>" role="alert">
                <%
                    out.println(session.getAttribute("blogStatus"));
                    session.removeAttribute("status");
                    session.removeAttribute("blogStatus");
                %>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <%}%>

            <a href="addblogform.jsp" class="btn btn-primary mb-3">Add New Blog</a>

            <%
                List<Blog> list = BlogData.getAllRecords();
                request.setAttribute("list", list);
            %>  

            <table id="blogTable" class="table table-striped mt-5" style="width:100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Title</th>
                        <th>Body</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% int num = 1; %>
                    <c:forEach items="${list}" var="u">  
                        <tr>
                            <td><%out.println(num);%></td>
                            <td>${u.getTitle()}</td>
                            <td>${u.getBody()}</td>  
                            <td>
                                <a href="editblogform.jsp?id=${u.getId()}" class="btn btn-success">Edit</a>
                                <a href="deleteblog.jsp?id=${u.getId()}" class="btn btn-danger">Delete</a>
                            </td></tr>
                            <% num += 1;%>
                        </c:forEach> 
                </tbody>
            </table>
            <div class="mt-5 visually-hidden">sssssssss</div>
        </div>
        <script src="./../js/jquery.js"></script>
        <script src="./../js/dataTables.bootstrap5.min.js"></script>
        <script src="./../js/bootstrap.bundle.js"></script>
        <script src="./../js/dataTables.js"></script>
        <script src="./../js/script.js"></script>
    </body>  
</html>
