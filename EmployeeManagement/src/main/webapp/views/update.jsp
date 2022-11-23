<head>
    <title>UPDATE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/views/demo.css">
</head>

<body>
    <center>
        <h1>UPDATE PAGE</h1>
        <form action="${pageContext.request.contextPath }/updateRecord" method="post">
            <table>
                <input type="number" name="employeeId" value="${emp.employeeId}" hidden>
                <tr>
                    <td>
                        First Name :
                    </td>
                    <td>
                        <input type="text" name="firstname" value="${emp.firstname}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Last Name :
                    </td>
                    <td>
                        <input type="text" name="lastname" value="${emp.lastname}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Email :
                    </td>
                    <td>
                        <input type="text" name="email" value="${emp.email}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Password :
                    </td>
                    <td>
                        <input type="text" name="password" value="${emp.password}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Address :
                    </td>
                    <td>
                        <input type="text" name="address" value="${emp.address}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Phone Number:
                    </td>
                    <td>
                        <input type="number" name="phoneno" value="${emp.phoneno}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Designation :
                    </td>
                    <td>
                        <input type="text" name="designation" value="${emp.designation}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Employee Type :
                    </td>
                    <td>
                        <input type="text" name="employeetype" value="${emp.employeetype}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Total Experience :
                    </td>
                    <td>
                        <input type="text" name="totalexperience" value="${emp.totalexperience}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Alternate Phone Number :
                    </td>
                    <td>
                        <input type="tel" name="alternatephno" value="${emp.alternatephno}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Date Of Birth :
                    </td>
                    <td><input type="date" name="dateofbirth" value="${emp.dateofbirth}"></td>
                </tr>
                <tr>
                    <td>
                        Gender:
                    </td>
                    <td><input type="text" name="gender" value="${emp.gender}"></td>
                </tr>
                <tr>
                    <td>
                        Date Of Joining :
                    </td>
                    <td>
                        <input type="date" name="dateofjoining" value="${emp.dateofjoining}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Project :
                    </td>
                    <td>
                        <input type="text" name="project" value="${emps.project}">
                    </td>

                <tr>
                    <td>
                        Manager :
                    </td>
                    <td>
                        <input type="text" name="manager" value="${emps.manager}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Mentor :
                    </td>
                    <td>
                        <input type="text" name="mentor" value="${emps.mentor}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Role :
                    <td>
                        <input type="text" name="role" value="${emps.role}">
                </tr>
                <tr>
                    <td>
                        Task:
                    </td>
                    <td>
                        <input type="text" name="task" value="${emps.task}">
                    </td>
                </tr>
                <tr>
                    <td>
                        Technical Stack:
                    </td>
                    <td>
                        <input type="text" name="technicalStack" value="${emps.technicalStack}">
                    </td>
                </tr>
                <tr>
                    <td>
                    <td><input type="submit" value="UPDATE">
                </tr>
            </table>
        </form>
    </center>
</body>