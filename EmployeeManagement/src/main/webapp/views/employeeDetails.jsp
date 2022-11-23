<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMPLOYEE DETAILS</title>
</head>

<body>
    <h1></h1>
    <div class="empImage">
        <img src="${emp.photo}" alt="profilePic">
    </div>
    <div class="id">
        <h1>
            ${emp.firstname}
            ${emp.lastname}
        </h1>
        <p>EMPLOYEEID RST-${emp.employeeId}</p>
        <div>
            <p></p>
            PHONENO - 
            ${emp.phoneno}
        </div>
        <div>
            <p></p>
            ALTERNATEPHNO - 
            ${emp.alternatephno}
        </div>
        <div>
            <p></p>
            DATE OF BIRTH - 
            ${emp.dateofbirth}
        </div>
        <div>
            <p></p>
            E-MAIL - 
            ${emp.email}
        </div>
        <div>
            <p></p>
            PASSWORD - 
            ${emp.password}
        </div>
        <div>
            <p></p>
            ADDRESS - 
            ${emp.address}
        </div>
        <div>
            <p></p>
            GENDER - 
            ${emp.gender}
        </div>
        <div>
            <p></p>
            DATE OF JOINING - 
            ${emp.dateofjoining}
        </div>
        <div>
            <p></p>
            DESIGNATION - 
            ${emp.designation}
        </div>
        <div>
            <p></p>
            EMPLOYEE TYPE - 
            ${emp.employeetype}
        </div>
        <div>
            <p></p>
            EXPERIENCE - 
            ${emp.totalexperience}
        </div>
    </div>

    <div class="pdetails">
    <div>
        PROFESSIONAL DETAILS
        <p></p>
        PROJECT :
        ${emps.project}
    </div>
    <div>
        <p></p>
        ROLE :
        ${emps.role}
    </div>
    <div>
        <p></p>
        TECHNICALSTACK : 
        ${emps.technicalStack}
    </div>
    <div>
        <p></p>
        TASK : 
        ${emps.task}
    </div>
    <div>
        <p></p>
        MANAGER : 
        ${emps.manager}
    </div>
    <div>
        <p></p>
        MENTOR : 
        ${emps.mentor}
    </div>
</div>
<div>
    <p><a href="employeePage">LOGOUT</a></p>
</div>
<div>
    <p><a href="/">Home</a></p>
</div>
</body>

</html>