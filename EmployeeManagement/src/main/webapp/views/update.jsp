<head>
    <title>UPDATE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/views/demo.css">
</head>

<body>
    <center>
        <h1>UPDATE PAGE</h1>
        <form action="${pageContext.request.contextPath }/updateRecord" method="post">
            <input type="number" name="employeeId" value="${emp.employeeId}" hidden>
           
            First Name :<input type="text" name="firstname" value="${emp.firstname}" class="form-firstname">
            <p><small class="validate-firstname" style="color: red;"></small></p>
            Last Name :<input type="text" name="lastname" value="${emp.lastname}" class="form-lastname">
            <p><small class="validate-lastname" style="color: red;"></small></p>
            Email :  <input type="text" name="email" value="${emp.email}" class="form-email">
            <p><small class="validate-email" style="color: red;"></small></p>
            Address :<input type="text" name="address" value="${emp.address}" class="form-address">
            <p><small class="validate-address" style="color: red;"></small></p>
            Phone Number:<input type="number" name="phoneno" value="${emp.phoneno}" class="form-phoneno">
            <p><small class="validate-phoneno" style="color: red;"></small></p>
            Password :<input type="text" name="password" value="${emp.password}" class="form-password">
            <p><small class="validate-password" style="color: red;"></small></p>
            Designation :<input type="text" name="designation" value="${emp.designation}" class="form-designation">
            <p><small class="validate-designation" style="color: red;"></small></p>
            Employee Type :<input type="text" name="employeetype" value="${emp.employeetype}" class="form-employeetype">
            <p><small class="validate-employeetype" style="color: red;"></small></p>
            Total Experience :<input type="text" name="totalexperience" value="${emp.totalexperience}" class="form-totalexperience">
            <p><small class="validate-totalexperience" style="color: red;"></small></p>
            Alternate Phone Number :<input type="tel" name="alternatephno" value="${emp.alternatephno}" class="form-password">
            <p><small class="validate-password" style="color: red;"></small></p>
            Date Of Birth :<input type="date" name="dateofbirth" value="${emp.dateofbirth}" class="form-designation">
            <p><small class="validate-designation" style="color: red;"></small></p>
            Gender:<input type="text" name="gender" value="${emp.gender}" class="form-employeetype">
            <p><small class="validate-employeetype" style="color: red;"></small></p>
            Date Of Joining :<input type="date" name="dateofjoining" value="${emp.dateofjoining}" class="form-totalexperience">
            <p><small class="validate-totalexperience" style="color: red;"></small></p>

            Project :<input type="text" name="project" value="${emps.project}" class="form-firstname">
            <p><small class="validate-firstname" style="color: red;"></small></p>
            Manager :<input type="text" name="manager" value="${emps.manager}" class="form-lastname">
            <p><small class="validate-lastname" style="color: red;"></small></p>
            Mentor :  <input type="text" name="mentor" value="${emps.mentor}" class="form-email">
            <p><small class="validate-email" style="color: red;"></small></p>
            Role :<input type="text" name="role" value="${emps.role}" class="form-address">
            <p><small class="validate-address" style="color: red;"></small></p>
            Task:<input type="text" name="task" value="${emps.task}" class="form-phoneno">
            <p><small class="validate-phoneno" style="color: red;"></small></p>
            Technical Stack:<input type="text" name="technicalStack" value="${emps.technicalStack}" class="form-phoneno">
            <p><small class="validate-phoneno" style="color: red;"></small></p>
            
            <input type="submit" value="UPDATE">
        </form>
    </center>
</body>