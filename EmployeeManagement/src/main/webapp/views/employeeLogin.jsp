<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
</head>
<body>
    <center>
        <h1>Employee Login</h1>
        <small style="color: red;"> ${err} </small>
        <form action="employeeLogin" method="post">
            <table>
                <tr>
                    <td>E-MAIL</td>
                    <td> <input type="email" name="email" placeholder="Enter your E-Mail"> </td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td> <input type="password" name="password" placeholder="Enter your Password"> </td>
                </tr>
                <p></p>
                <tr>
                    <p></p>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="LOGIN"></td>
                </tr>
            </table>
        </form>
        <p><a href="/">Back</a></p>
    </center>
</body>
</html>