<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>USER DETAILS</title>
</head>

<body>
    <center>
        <h1>USER DETAILS</h1>
        <table style="width: 30%;">
            <tr>
                <td>Employee Id :-</td>
                <td>RST-${emp.pId}</td>
            </tr>
            <tr>
                <td>PROJECT :-</td>
                <td>${emp.project}</td>
            </tr>
            <tr>
                <td>ROLE :-</td>
                <td>${emp.role}</td>
            </tr>
            <tr>
                <td>TECHNICALSTACK :-</td>
                <td>${emp.technicalStack}</td>
            </tr>
            <tr>
                <td>TASK :-</td>
                <td>${emp.task}</td>
            </tr>
            <tr>
                <td>MANAGER :-</td>
                <td>${emp.manager}</td>
            </tr>
            <tr>
                <td>MENTOR :-</td>
                <td>${emp.mentor}</td>
            </tr>
        </table>
        <a href="/">Logout</a>
    </center>
</body>

</html>