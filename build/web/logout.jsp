<%-- 
    Document   : logout
    Created on : Dec 15, 2022, 8:20:49 PM
    Author     : Ferdian Iqbal
--%>

<%@page import="com.javatpoint.data.BlogData"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Blog"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
    session.removeAttribute("status");
    session.removeAttribute("messageStatus");
        session.removeAttribute("user");
    response.sendRedirect("index.jsp");
%>
