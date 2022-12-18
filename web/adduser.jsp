<%-- 
    Document   : adduserform
    Created on : Dec 15, 2022, 10:14:28 AM
    Author     : Ferdian Iqbal
--%>

<%@page import="com.javatpoint.data.UserData"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<%
    int i = UserData.save(u);
    if (i > 0) {
    session.removeAttribute("status");
    session.removeAttribute("messageStatus");
        session.setAttribute("status", "1");
        session.setAttribute("messageStatus", "You have successfully registered!");
        response.sendRedirect("login.jsp");
    } else {
        session.removeAttribute("status");
            session.removeAttribute("messageStatus");
            session.setAttribute("status", "0");
            session.setAttribute("messageStatus", "Username already used!");
            response.sendRedirect("login.jsp");
    }
%>