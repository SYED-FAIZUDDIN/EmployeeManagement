<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMPLOYEE DETAILS</title>
</head>

<body>
    <table>
        IMAGE
        <img src="${emp.photo}" alt="profilePic">
        <tr>
            <td> FIRST Name</td>
            <td> ${emp.firstname}</td>
        </tr>

        <tr>
            <td>LAST NAME</td>
            <td>${emp.lastname}</td>
        </tr>
        <tr>
            <td>EMPLOYEEID</td>
            <td>RST-${emp.employeeId}</td>
        </tr>
        <tr>
            <td>PHONENO -</td>
            <td>${emp.phoneno}</td>
        </tr>
        <tr>
            <td>ALTERNATE PHNO -</td>
            <td>${emp.alternatephno}</td>
        </tr>
        <tr>
            <td> DATE OF BIRTH -</td>
            <td>${emp.dateofbirth}</td>
        </tr>
        <tr>
            <td>E-MAIL -</td>
            <td>${emp.email}</td>
        </tr>
        <tr>
            <td>PASSWORD -</td>
            <td>${emp.password}</td>
        </tr>
        <tr>
            <td>ADDRESS -</td>
            <td>${emp.address}</td>
        </tr>
        <tr>
            <td> GENDER -</td>
            <td>${emp.gender}</td>
        </tr>
        <tr>
            <td>DATE OF JOINING -</td>
            <td>${emp.dateofjoining}</td>
        </tr>
        <tr>
            <td> DESIGNATION -</td>
            <td>${emp.designation}</td>
        </tr>
        <tr>
            <td>EMPLOYEE TYPE -</td>
            <td>${emp.employeetype}</td>
        </tr>
        <tr>
            <td>EXPERIENCE-</td>
            <td>${emp.totalexperience}</td>
        </tr>
        <tr>

            <td>PROJECT :</td>
        </tr>
        <td>${emps.project}</td>
        <tr>
            <td>ROLE :</td>
            <td>${emps.role}</td>
        </tr>
        <tr>
            <td>TECHNICALSTACK :</td>
            <td>${emps.technicalStack}</td>
        </tr>
        <tr>
            <td>TASK :</td>
            <td>${emps.task}</td>
        </tr>
        <tr>
            <td>MANAGER :</td>
            <td>${emps.manager}</td>
        </tr>
        <tr>
            <td>MENTOR :</td>
            <td>${emps.mentor}</td>
        </tr>
        <tr>
            <td><a href="employeePage">LOGOUT</a></td>
            <td><a href="/">Home</a></td>
        </tr>
    </table>
</body>

</html>