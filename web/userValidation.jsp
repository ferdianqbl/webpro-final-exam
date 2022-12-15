<%-- 
    Document   : userValidation
    Created on : Dec 15, 2022, 11:54:42 AM
    Author     : Ferdian Iqbal
--%>

<%@page import="com.javatpoint.data.UserData"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<%
    int i = UserData.getValidation(u);
    if (i > 0) {
    session.removeAttribute("status");
    session.removeAttribute("messageStatus");
        session.setAttribute("status", "1");
        session.setAttribute("messageStatus", "You have successfully registered!");
        session.setAttribute("user", u.getUsername());
        response.sendRedirect("index.jsp");
    } else {
        session.removeAttribute("status");
            session.removeAttribute("messageStatus");
            session.setAttribute("status", "0");
            session.setAttribute("messageStatus", "Login Failed!");
            response.sendRedirect("login.jsp");
    }
%>
