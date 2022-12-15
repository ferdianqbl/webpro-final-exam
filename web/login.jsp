<%--
    Document   : index
    Created on : Dec 15, 2022, 9:52:50 AM
    Author     : Ferdian Iqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Login</title>

        <link rel="stylesheet" href="./css/bootstrap.css">
        <link rel="stylesheet" href="./css/login-register.css">
    </head>

    <body class="bg-primary">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-10 col-sm-8 col-lg-5 form-box">

                    <%if (session.getAttribute("status") != null) {%>
                    <div class="alert alert-dismissible fade show <%
                        if (session.getAttribute("status") == "1") {
                            out.println("alert-success");
                        } else
                            out.println("alert-danger");
                         %>" role="alert">
                        <%
                            out.println(session.getAttribute("messageStatus"));
                            session.removeAttribute("status");
                            session.removeAttribute("messageStatus");
                        %>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                    <%}%>


                    <h2 class="text-center mb-5">Login</h2>
                    <form method="POST" action="./userValidation.jsp" autocomplete="off">

                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" class="form-control" id="username" name="username" autofocus required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="w-100 btn btn-lg btn-success mt-4">Login</button>
                    </form>

                    <p class="login-text text-center mt-3 text-secondary">Not registered? <a href="./adduserform.jsp">Register
                            Now!</a>
                    </p>
                </div>
            </div>
            <script src="./js/bootstrap.bundle.js"></script>
    </body>

</html>