<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <head>
        <title>All Employees</title>
        <link rel="stylesheet" href="views/demo.css">
    </head>
    <center>
        <h1>Employees</h1>
        <P></P>
        <table border="1" style="width:80%">
            <tr>
                <th>Employee Id</th>
                <th>EMAIL</th>
                <th>Password</th>
                <th>PROJECT</th>
                <th>ROLE</th>
                <th>TECHNICALSTACK</th>
                <th>TASK</th>
                <th>EXPERIENCE</th>
                <th>MANAGER</th>
                <th>MENTOR</th>
                <th>Actions</th>
            </tr>
            <c:forEach items="${emps}" var="emp">
                <tr>
                    <td>RST-${emp.id}</td>
                    <td>${emp.email}</td>
                    <td>${emp.password}</td>
                    <td>${emp.project}</td>
                    <td>${emp.role}</td>
                    <td>${emp.technicalStack}</td>
                    <td>${emp.task}</td>
                    <td>${emp.experience}</td>
                    <td>${emp.manager}</td>
                    <td>${emp.mentor}</td>                    
                    <td>
                        <a href="delete/${emp.id}"><i class="fa-solid fa-trash text-danger"></i></a>
                        <a href="update/${emp.id}"><i class="fa-solid fa-pen-nib"></i></a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </center>