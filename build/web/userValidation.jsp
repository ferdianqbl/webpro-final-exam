<%-- 
    Document   : userValidation
    Created on : Dec 15, 2022, 11:54:42 AM
    Author     : Ferdian Iqbal
--%>

<%@page import="com.javatpoint.data.UserData"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 

<%
    int i = UserData.save(u);
    if (i > 0) {
        response.sendRedirect("adduser-success.jsp");
    } else {
        response.sendRedirect("adduser-error.jsp");
    }
%>
