<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=5" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    
    <link
      rel="stylesheet"
      type="text/css"
      href="views/vendor/bootstrap/css/bootstrap.min.css"
    />

    <link
      rel="stylesheet"
      type="text/css"
      href="views/fonts/font-awesome-4.7.0/css/font-awesome.min.css"
    />

    <!-- <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" /> -->

    <!-- <link
      rel="stylesheet"
      type="text/css"
      href="vendor/css-hamburgers/hamburgers.min.css"
    /> -->

    <!-- <link
      rel="stylesheet"
      type="text/css"
      href="vendor/select2/select2.min.css"
    />
     -->
    <style>
        td {
    padding-top: .7em;
    padding-bottom: .7em;
    text-align: left;

}
.btnSubmit a{
        padding: 6px 30px;
        background-color: #0070d2;
        border-radius: 10px;
        color: #fff;
    }
    .btnSubmit:hover{
        color:#000
    }
/* input{
    outline: 0.8px solid black;
} */
input[type=tel],[type=password],[type=text],[type=number]{
    outline: 0.8px solid black;
}
/* input{
    outline: 0.8px solid black;
} */
input[type=text]:focus {
  border: 3px solid #555;
}
.text-center{
    justify-content: center;
}
.btn{
display: flex;
    justify-content: center;
}
h2.text-center.mb-3 {
    font-size: 35px;
    font-weight: 700;
}
/* .wrap-login100{
    background-image: url(/images/logo.png) !important;
    background-position: center;
    background-repeat: no-repeat;
} */
    </style>
    <!-- <link rel="stylesheet" type="text/css" href="css/util.css" /> -->
    <link rel="stylesheet" type="text/css" href="views/css/main.css" />
    <title>REGISTRATION</title>
  </head>
  <body>
    <div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
          <div class="container">
          
            <div class="row text-center">
                <img src="views/images/logo.png" class="mr-3" alt="" style="width:150px;opacity: 0.7">
              <h2 class="text-center mb-3">Registration Form</h2>
              <div class="row">
                
                <div class="col-6">
                  <form action="userRegister" method="post" enctype="multipart/form-data">
                    <table>
                      <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstname" required /></td>
                      </tr>
                      <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastname" required /></td>
                      </tr>
                      <tr>
                        <td>Phone Number</td>
                        <td><input type="tel" name="phoneno" required /></td>
                      </tr>
                      <tr>
                        <td>Alternate Phone Number</td>
                        <td><input type="tel" name="alternatephno" /></td>
                      </tr>
                      <tr>
                        <td>Date Of Birth</td>
                        <td>
                          <input type="date" name="dateofbirth" required />
                        </td>
                      </tr>
                      <tr>
                        <td>E-MAIL</td>
                        <td><input type="text" name="email" required /></td>
                      </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                              <input type="password" name="password" required />
                            </td>
                          </tr>
                       
                          <tr>
                            <td>Address</td>
                            <td><input type="text" name="address" required /></td>
                          </tr>
                      
                    </table>
                </div>
                <div class="col-6">
                    <table>
                      <tr>
                        <td>Image</td>
                        <td> <input type="file" name="photo" required> </td>
                    </tr> 
                     

                      <tr>
                        <td>gender</td>
                        <td>
                          <input type="radio" name="gender" value="Male" />Male
                          <input
                            type="radio"
                            name="gender"
                            value="Female"
                          />Female
                        </td>
                      </tr>
                      <tr>
                        <td>Date Of Joining</td>
                        <td>
                          <input type="date" name="dateofjoining" required />
                        </td>
                      </tr>
                      <tr>
                        <td>Designation</td>
                        <td>
                          <input type="text" name="designation" required />
                        </td>
                      </tr>
                      <tr>
                        <td>Employee Type</td>
                        <td>
                          <input type="text" name="employeetype" required />
                        </td>
                      </tr>
                      <tr>
                        <td>Total Experience</td>
                        <td>
                          <input
                            type="number"
                            name="totalexperience"
                            required
                            minlength="1"
                            maxlength="20"
                          />
                        </td>
                      </tr>
                      
                      
                    </table>
                    
                  </div>
                </div>
              </div>
              <div class="btn">
                <button class="btnSubmit">
                  <input type="submit" value="Submit">
                </button>
              </div>
            </div>
          </form>
          <a href="javascript:history.back()">BACK</a>    
        </div>
      </div>
    </div>
  </body>
</html>
