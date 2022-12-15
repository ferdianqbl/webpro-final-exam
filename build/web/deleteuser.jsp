<%-- 
    Document   : deleteuser
    Created on : Dec 15, 2022, 10:15:04 AM
    Author     : Ferdian Iqbal
--%>

<%@page import="com.javatpoint.data.UserData"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
    UserData.delete(u);
    response.sendRedirect("viewusers.jsp");
%>