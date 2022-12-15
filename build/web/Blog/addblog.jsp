<%-- 
    Document   : adduserform
    Created on : Dec 15, 2022, 10:14:28 AM
    Author     : Ferdian Iqbal
--%>



<%@page import="com.javatpoint.data.BlogData"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Blog"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<%
    int i = BlogData.save(u);
    if (i > 0) {
    session.removeAttribute("status");
    session.removeAttribute("messageStatus");
        session.setAttribute("status", "1");
        session.setAttribute("messageStatus", "You're blog have successfully added!");
        response.sendRedirect("viewblogs.jsp");
    } else {
        session.removeAttribute("status");
            session.removeAttribute("messageStatus");
            session.setAttribute("status", "0");
            session.setAttribute("messageStatus", "Add Blog Failed!");
            response.sendRedirect("viewblogs.jsp");
    }
%>