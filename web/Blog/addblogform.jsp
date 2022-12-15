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
        <title>Add New Blog</title>

        <link rel="stylesheet" href="./../css/bootstrap.css">
        <!--<link rel="stylesheet" href="./../">-->
    </head>

    <body>
        <div class="container py-5">
            <div class="row justify-content-center align-items-center">
                <div class="col-10 col-sm-8 col-lg-5 form-box">
                    <h2 class="text-center mb-5">Add New Content</h2>
                    <form method="POST" action="./addblog.jsp" autocomplete="off">

                        <div class="mb-3 form-floating">
                            <input type="text" class="form-control" required id="title" name="title" placeholder="add title here">
                            <label for="title" class="form-label">Title</label>
                        </div>
                        <div class="mb-3 form-floating">
                            <textarea class="form-control" placeholder="Add body here" id="body" name="body" style="min-height: 300px"></textarea>
                            <label for="body">Body</label>
                        </div>
                        <button type="submit" class="w-100 btn btn-lg btn-success mt-4">Add</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="./../js/bootstrap.js"></script>
    </body>

</html>
