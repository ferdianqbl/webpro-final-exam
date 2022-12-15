<%-- 
    Document   : editform
    Created on : Dec 15, 2022, 10:15:23 AM
    Author     : Ferdian Iqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
        <title>Edit Form</title>  
    </head>  
    <body>  
        <%@page import="com.javatpoint.data.UserData,com.javatpoint.bean.User"%>  

        <%
            String id = request.getParameter("id");
            User u = UserData.getRecordById(Integer.parseInt(id));
        %>  

        <h1>Edit Form</h1>  
        <form action="edituser.jsp" method="post">  
            <input type="hidden" name="id" value="<%=u.getId()%>"/>  
            <table>  
                <tr><td>Name:</td><td>  
                        <input type="text" name="name" value="<%= u.getName()%>"/></td></tr>  
                <tr><td>Password:</td><td>  
                        <input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>  
                <tr><td>Email:</td><td>  
                        <input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>  
                <tr><td>Sex:</td><td>  
                        <input type="radio" name="sex" value="male"/>Male   
                        <input type="radio" name="sex" value="female"/>Female </td></tr>  
                <tr><td>Country:</td><td>  
                        <select name="country">  
                            <option>Indonesia</option>  
                            <option>Korea</option>  
                            <option>Japan</option>    
                            <option>Other</option>  
                        </select>  
                    </td></tr>  
                <tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
            </table>  
        </form>  

    </body>  
</html>
