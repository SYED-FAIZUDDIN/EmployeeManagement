<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=5" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />



    <link rel="stylesheet" type="text/css" href="views/vendor/bootstrap/css/bootstrap.min.css" />

    <link rel="stylesheet" type="text/css" href="views/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />

    <link rel="stylesheet" type="text/css" href="views/vendor/animate/animate.css" />

    <link rel="stylesheet" type="text/css" href="views/vendor/css-hamburgers/hamburgers.min.css" />

    <link rel="stylesheet" type="text/css" href="views/vendor/select2/select2.min.css" />

    <style>
        td {
            padding-top: .7em;
            padding-bottom: .7em;
        }

        .btnSubmit {
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
    </style>
    <link rel="stylesheet" type="text/css" href="views/css/util.css" />
    <link rel="stylesheet" type="text/css" href="views/css/main.css" />
</head>

<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="container">
                    <div class="row text-center">
                        <h2 class="text-center mb-3">Employee Details</h2>
                        <div class="row">
                            <div class="col-6">
                                <table>
                                    <tr>
                                        <td>Image :- </td>
                                        <td> <img src="${emp.photo}" width="50" height="40" alt="profilePic"> </td>
                                    </tr>
                                    <tr>
                                        <td>employee Id</td>
                                        <td>${emp.employeeId}</td>
                                    </tr>
                                    <tr>
                                        <td>First Name</td>
                                        <td>${emp.firstname}</td>
                                    </tr>
                                    <tr>
                                        <td>Last Name</td>
                                        <td>${emp.lastname}</td>
                                    </tr>
                                    <tr>
                                        <td>Phone Number</td>
                                        <td>${emp.phoneno}</td>
                                    </tr>
                                    <tr>
                                        <td>Alternate Phone Number</td>
                                        <td>${emp.alternatephno}</td>
                                    </tr>
                                    <tr>
                                        <td>Date of Birth</td>
                                        <td>${emp.dateofbirth}</td>
                                    </tr>
                                </table>
                                </form>
                            </div>
                            <div class="col-6">
                                <table>
                                    <tr>
                                        <td>E-MAIL</td>
                                        <td>${emp.email}</td>
                                    </tr>
                                    <tr>
                                        <td>Password</td>
                                        <td>${emp.password}</td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>${emp.address}</td>
                                    </tr>
                                    <tr>
                                        <td>Gender</td>
                                        <td>${emp.gender}</td>
                                    </tr>
                                    <tr>
                                        <td>Date of Joining</td>
                                        <td>${emp.dateofjoining}</td>
                                    </tr>
                                    <tr>
                                        <td>Designation</td>
                                        <td>${emp.designation}</td>
                                    </tr>
                                    <tr>
                                        <td>Employee Type</td>
                                        <td>${emp.employeetype}</td>
                                    </tr>
                                    <tr>
                                        <td>Total Experience</td>
                                        <td>${emp.totalexperience}</td>
                                    </tr>
                                </table>
                                </form>

                            </div>
                        </div>
                    </div>
                    <div class="btn">
                        <button class="btnSubmit">
                            <p><a href="ExtraDetails/${emp.employeeId}">ADD DETAILS</a></p>
                        </button>
                        <button class="btnSubmit">
                            <p><a href="views/adminPage.jsp">Back</a></p>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>