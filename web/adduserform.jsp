<%-- 
    Document   : adduserform
    Created on : Dec 15, 2022, 10:14:28 AM
    Author     : Ferdian Iqbal
--%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" href="/images/logo.svg">
        <title>Register</title>

        <link rel="stylesheet" href="./css/bootstrap.css">
        <link rel="stylesheet" href="./css/login-register.css">
    </head>

    <body class="bg-primary">
        <div class="container py-5">
            <div class="row justify-content-center align-items-center">
                <div class="col-10 col-sm-8 col-lg-5 form-box">
                    <h2 class="text-center mb-5">Register</h2>
                    <form method="POST" action="./adduser.jsp" autocomplete="off">

                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" required id="name" name="name">
                        </div>
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" class="form-control" id="username"
                                   name="username" required>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password"
                                   name="password" required>
                        </div>

                        <button type="submit" class="w-100 btn btn-lg btn-success mt-4">Register</button>
                    </form>

                    <p class="login-text text-center mt-3 text-secondary">Already registered? <a href="./login.jsp">Login
                            Now!</a>
                    </p>
                </div>
            </div>
        </div>
        <script src="/js/bootstrap.js"></script>
    </body>

</html>
