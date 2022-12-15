<%-- 
    Document   : deleteuser
    Created on : Dec 15, 2022, 10:15:04 AM
    Author     : Ferdian Iqbal
--%>

<%@page import="com.javatpoint.data.BlogData"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Blog"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
    BlogData.delete(u);
    session.removeAttribute("status");
    session.removeAttribute("messageStatus");
        session.setAttribute("status", "1");
        session.setAttribute("blogStatus", "Delete Success!");
    response.sendRedirect("viewblogs.jsp");
%>