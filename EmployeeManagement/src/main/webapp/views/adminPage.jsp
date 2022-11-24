<!DOCTYPE html>
<html lang="en">

<head>
    <title>ADMIN PAGE</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />



    <link rel="stylesheet" type="text/css" href="views/vendor/bootstrap/css/bootstrap.min.css" />

    <link rel="stylesheet" type="text/css" href="views/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />

    <link rel="stylesheet" type="text/css" href="views/vendor/animate/animate.css" />

    <link rel="stylesheet" type="text/css" href="views/vendor/css-hamburgers/hamburgers.min.css" />

    <link rel="stylesheet" type="text/css" href="views/vendor/select2/select2.min.css" />

    <link rel="stylesheet" type="text/css" href="views/css/util.css" />
    <link rel="stylesheet" type="text/css" href="views/css/main.css" />

</head>
<style>
    .wrap-login100.m-5 {
        text-align: center;
        justify-content: center;
    }
</style>

<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 m-5">
                <img src="views/images/logo.png" class="mr-3" alt="" style="width:150px;opacity: 0.7">
                <div class="container row text-center">
                    <h1 class="m-auto">Welcome Admin</h1>
                </div>

                <div class="link">
                    <li>
                        <a href="${pageContext.request.contextPath }/register">Register an Employee</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/getAll">All Employee List</a>
                    </li>
                    <a href="javascript:history.back()">BACK</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>