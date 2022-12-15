<%-- 
    Document   : edituser
    Created on : Dec 15, 2022, 10:52:12 AM
    Author     : Ferdian Iqbal
--%>

<%@page import="com.javatpoint.data.UserData"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
    int i = UserData.update(u);
    response.sendRedirect("viewusers.jsp");
%>
