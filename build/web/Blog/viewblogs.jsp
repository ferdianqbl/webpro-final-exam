<%-- 
    Document   : viewusers
    Created on : Dec 15, 2022, 10:53:25 AM
    Author     : Ferdian Iqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  

<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
        <title>View Users</title>  
    </head>  
    <body>  

        <%@page import="com.javatpoint.data.BlogData,com.javatpoint.bean.*,java.util.*"%>  
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

        <h1>BLog List</h1>  

        <%
            List<Blog> list = BlogData.getAllRecords();
            request.setAttribute("list", list);
        %>  

        <table border="1" width="90%">  
            <tr><th>Id</th><th>Title</th><th>Body</th>
                <th>Edit</th><th>Delete</th></tr>  
                    <c:forEach items="${list}" var="u">  
                <tr><td>${u.getId()}</td><td>${u.getTitle()}</td><td>${u.getBody()}</td>  
                    <td><a href="editblogform.jsp?id=${u.getId()}">Edit</a></td>  
                    <td><a href="deleteblog.jsp?id=${u.getId()}">Delete</a></td></tr>  
                </c:forEach>  
        </table>

    </body>  
</html>
