<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>USERDASHBOARD</title>
</head>

<body>
    <center>
        <h1>Employee Details</h1>
        <table style="width: 30% ;">
            <tr>
                <td>Image :- </td>
                <td> <img src="${emp.photo}" width="50" height="40" alt="profilePic"> </td>
            </tr>
            <tr>
                <td>EMPLOYEE ID</td>
                <td>RST-${emp.employeeId}</td>
            </tr>
            <tr>
                <td>FIRST NAME</td>
                <td>${emp.firstname}</td>
            </tr>
            <tr>
                <td>LAST NAME</td>
                <td>${emp.lastname}</td>
            </tr>
            <tr>
                <td>PHONE NUMBER</td>
                <td>${emp.phoneno}</td>
            </tr>
            <tr>
                <td>ALTERNATE PHONE NUMBER</td>
                <td>${emp.alternatephno}</td>
            </tr>
            <tr>
                <td>DATE OF BIRTH</td>
                <td>${emp.dateofbirth}</td>
            </tr>
            <tr>
                <td>E-MAIL</td>
                <td>${emp.email}</td>
            </tr>
            <tr>
                <td>PASSWORD</td>
                <td>${emp.password}</td>
            </tr>
            <tr>
                <td>ADDRESS</td>
                <td>${emp.address}</td>
            </tr>
            <tr>
                <td>GENDER</td>
                <td>${emp.gender}</td>
            </tr>
            <tr>
                <td>DATE OF JOINING</td>
                <td>${emp.dateofjoining}</td>
            </tr>
            <tr>
                <td>DESIGNATION</td>
                <td>${emp.designation}</td>
            </tr>
            <tr>
                <td>EMPLOYEE TYPE</td>
                <td>${emp.employeetype}</td>
            </tr>
            <tr>
                <td>EXPERIENCE</td>
                <td>${emp.totalexperience}</td>
            </tr>
           
        </table>
        </table>
        <p><a href="ExtraDetails/${emp.employeeId}">ADD DETAILS</a></p>
        <p><a href="adminPage">Back</a></p>
        <p><a href="/">LOGOUT</a></p>
    </center>
</body>

</html>