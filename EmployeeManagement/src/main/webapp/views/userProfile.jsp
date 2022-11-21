<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserDashboard</title>
</head>
<body>
    <center>
        <form action="${pageContext.request.contextPath }/userDetails" method="post">
            <h1>ADD DETAILS</h1>
            <table>
                <tr>
                    <td>Employee Id</td>
                    <td> <input type="text" name="pId" value="${email}"> </td>
                </tr>
                <tr>
                    <td>PROJECT</td>
                    <td> <input type="text" name="project"> </td>
                </tr>
                <tr>
                    <td>ROLE</td>
                    <td> <input type="text" name="role"> </td>
                </tr>
                <tr>
                    <td>TECHNICAL STACK</td>
                    <td> <input type="text" name="technicalStack"> </td>
                </tr>
                <tr>
                    <td>TASK</td>
                    <td> <input type="text" name="task"> </td>
                </tr>
                <tr>
                    <td>MANAGER</td>
                    <td> <input type="text" name="manager"> </td>
                </tr>
                <tr>
                    <td>MENTOR</td>
                    <td> <input type="text" name="mentor"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SUBMIT"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>