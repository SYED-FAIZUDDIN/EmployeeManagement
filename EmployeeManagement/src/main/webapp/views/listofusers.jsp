<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="">
    </head>

    <style>
            tr:hover {background-color: coral;}
    </style>

    <body>
        <center>
            <h1>Employees</h1>
            <table border="1" style="width: 60%;">
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
                            <a href="delete/${key.employeeId}"><i class="fa-solid fa-trash text-danger"></i></a>&emsp;
                            <a href="update/${key.employeeId}"><i class="fa-solid fa-pen-nib"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <p></p>
            <a href="views/adminPage.jsp">Back</a>
        </center>
    </body>

    </html>