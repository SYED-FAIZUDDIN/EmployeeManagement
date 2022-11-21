<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register yourself</title>
</head>

<body>
    <center>
        <h1>Registration form</h1>
        <form action="userRegister" method="post" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstname" ></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastname" ></td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td><input type="tel" name="phoneno" ></td>
                </tr>
                <tr>
                    <td>Alternate Phone Number</td>
                    <td><input type="tel" name="alternatephno"></td>
                </tr>
                <tr>
                    <td>Date Of Birth</td>
                    <td><input type="date" name="dateofbirth" ></td>
                </tr>
                <tr>
                    <td>E-MAIL</td>
                    <td><input type="text" name="email" ></td>
                </tr>
                <tr> 
                    <td></td>
                    <td><small style="color: red;"> ${err} </small></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" ></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address"></td>
                </tr>

                <tr>
                    <td>gender</td>
                    <td><input type="radio" name="gender" value="Male">Male
                        <input type="radio" name="gender" value="Female">Female
                    </td>
                </tr>
                <tr>
                    <td>Date Of Joining</td>
                    <td><input type="date" name="dateofjoining" ></td>
                </tr>
                <tr>
                    <td>Designation</td>
                    <td><input type="text" name="designation" ></td>
                </tr>
                <tr>
                    <td>Employee Type</td>
                    <td><input type="text" name="employeetype" ></td>
                </tr>
                <tr>
                    <td>Total Experience</td>
                    <td><input type="number" name="totalexperience" ></td>
                </tr>
                 <tr>
                    <td>Image</td>
                    <td> <input type="file" name="photo"> </td>
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