<%-- 
    Document   : editform
    Created on : Dec 15, 2022, 10:15:23 AM
    Author     : Ferdian Iqbal
--%>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("./../index.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" href="/images/logo.svg">
        <title>Add New Blog</title>

        <link rel="stylesheet" href="./../css/bootstrap.css">
        <!--<link rel="stylesheet" href="./../">-->
    </head>
    <%@page import="com.javatpoint.data.BlogData,com.javatpoint.bean.Blog"%>  

    <%
        String id = request.getParameter("id");
        Blog u = BlogData.getRecordById(Integer.parseInt(id));
    %>  
    <body>
        <div class="container py-5">
            <div class="row justify-content-center align-items-center">
                <div class="col-10 col-sm-8 col-lg-5 form-box">
                    <h2 class="text-center mb-5">Edit Content</h2>
                    <form method="POST" action="./editblog.jsp" autocomplete="off">
                        <input type="hidden" name="id" value="<%=u.getId()%>"/>  
                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" required id="title" name="title" placeholder="add title here" value="<%= u.getTitle()%>">
                            <label for="title" class="form-label">Title</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <textarea class="form-control" placeholder="Add body here" id="body" name="body" style="min-height: 300px"><%= u.getBody()%></textarea>
                            <label for="body">Body</label>
                        </div>
                        <button type="submit" class="w-100 btn btn-lg btn-success mt-4">Edit</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="./../js/bootstrap.js"></script>
    </body>

</html>

