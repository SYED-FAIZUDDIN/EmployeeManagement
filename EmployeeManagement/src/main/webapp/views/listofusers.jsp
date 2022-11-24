<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=5" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />


    <link rel="stylesheet" type="text/css" href="views/vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" type="text/css" href="views/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />

    <!-- <link rel="stylesheet" type="text/css" href="views/vendor/animate/animate.css" /> -->

    <!-- <link
      rel="stylesheet"
      type="text/css"
      href="views/vendor/css-hamburgers/hamburgers.min.css"
    /> -->

    <!-- <link
      rel="stylesheet"
      type="text/css"
      href="views/vendor/select2/select2.min.css"
    />
     -->
    <style>
        td {
            padding-top: .7em;
            padding-bottom: .7em;
            text-align: left;

        }

        .btnSubmit a {
            padding: 6px 30px;
            background-color: #0070d2;
            border-radius: 10px;
            color: #fff;
        }

        .btnSubmit:hover {
            color: #000
        }

        /* input{
    outline: 0.8px solid black;
} */
        input[type=tel],
        [type=password],
        [type=text],
        [type=number] {
            outline: 0.8px solid black;
        }

        /* input{
    outline: 0.8px solid black;
} */
        input[type=text]:focus {
            border: 3px solid #555;
        }

        .text-center {
            justify-content: center;
        }

        .btn {
            display: flex;
            justify-content: center;
        }

        h2.text-center.mb-3 {
            font-size: 35px;
            font-weight: 700;
        }

        /* .wrap-login100{
    background-image: url(/images/logo.png) !important;
    background-position: center;
    background-repeat: no-repeat;
} */
    </style>
    <!-- <link rel="stylesheet" type="text/css" href="views/css/util.css" /> -->
    <link rel="stylesheet" type="text/css" href="views/css/main.css" />
    <title>EMPLOYEES</title>
</head>

<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="container">

                    <div class="row text-center">
                        <img src="views/images/logo.png" class="mr-3" alt="" style="width:150px;opacity: 0.7">
                        <h2 class="text-center mb-3">EMPLOYEES</h2>
                        <div class="row">
                            <table border="1" style="width:100%;">
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>EMAIL</th>
                                    <th>Image</th>
                                    <th>Actions</th>
                                </tr>
                                <c:forEach items="${keys}" var="key">
                                    <tr>
                                        <td>RST-${key.employeeId}</td>
                                        <td>${key.firstname}</td>
                                        <td>${key.email}</td>
                                        <td><img src="${key.photo}" alt="photo" width="100" height="100"></td>
                                        <td>
                                            <a href="delete/${key.employeeId}"><i
                                                    class="fa-solid fa-trash text-danger"></i></a>&emsp;
                                            <a href="update/${key.employeeId}"><i class="fa-solid fa-pen-nib"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                    <a href="javascript:history.back()">BACK</a>    
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>