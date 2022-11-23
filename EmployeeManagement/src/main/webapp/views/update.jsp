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
                    First Name :<input type="text" name="firstname" value="${emp.firstname}">
                </tr>
                <tr>
                    Last Name :<input type="text" name="lastname" value="${emp.lastname}">
                </tr>
                <tr>
                    Email : <input type="text" name="email" value="${emp.email}">
                </tr>
                <tr>
                    Address :<input type="text" name="address" value="${emp.address}">
                </tr>
                <tr>
                    Phone Number:<input type="number" name="phoneno" value="${emp.phoneno}">
                </tr>
                <tr>
                    Password :<input type="text" name="password" value="${emp.password}">
                </tr>
                <tr>
                    Designation :<input type="text" name="designation" value="${emp.designation}"
                    >
                </tr>
                <tr>
                    Employee Type :<input type="text" name="employeetype" value="${emp.employeetype}"
                    >
                </tr>
                <tr>
                    Total Experience :<input type="text" name="totalexperience" value="${emp.totalexperience}"
                    >
                </tr>
                <tr>
                    Alternate Phone Number :<input type="tel" name="alternatephno" value="${emp.alternatephno}"
                    >
                </tr>
                <tr>
                    Date Of Birth :<input type="date" name="dateofbirth" value="${emp.dateofbirth}"
                    >
                </tr>
                <tr>
                    Gender:<input type="text" name="gender" value="${emp.gender}">
                </tr>
                <tr>
                    Date Of Joining :<input type="date" name="dateofjoining" value="${emp.dateofjoining}"
                    >
                </tr>
                <tr>

                    Proj</tr>ect :<input type="text" name="project" value="${emps.project}">

                <tr>
                    Manager :<input type="text" name="manager" value="${emps.manager}">
                </tr>
                <tr>
                    Mentor : <input type="text" name="mentor" value="${emps.mentor}">
                </tr>
                <tr>
                    Role :<input type="text" name="role" value="${emps.role}">
                </tr>
                <tr>
                    Task:<input type="text" name="task" value="${emps.task}">
                </tr>
                <tr>
                    Technical Stack:<input type="text" name="technicalStack" value="${emps.technicalStack}"
                    >
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="UPDATE"></td>
                </tr>
            </table>
        </form>
    </center>
</body>