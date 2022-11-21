<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<center>
    <h1>Employee Details</h1>
    <table style="width: 30% ; "border="1">
        <tr>
            <td>employee Id</td>
            <td>${emp.firstname}</td>
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
    <a href="views/adminPage.jsp">Back</a>
</center>

</body>

</html>