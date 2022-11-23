<!DOCTYPE html>
<html lang="en">

<head>
  <title>Login</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />


  <link rel="stylesheet" type="text/css" href="views/vendor/bootstrap/css/bootstrap.min.css" />

  <link rel="stylesheet" type="text/css" href="views/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />

  <link rel="stylesheet" type="text/css" href="views/vendor/animate/animate.css" />

  <link rel="stylesheet" type="text/css" href="views/vendor/css-hamburgers/hamburgers.min.css" />

  <link rel="stylesheet" type="text/css" href="views/vendor/select2/select2.min.css" />

  <link rel="stylesheet" type="text/css" href="views/css/util.css" />
  <link rel="stylesheet" type="text/css" href="views/css/main.css" />

</head>

<body>
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100 m-5">

        <div class="login100-pic js-tilt mt-5" data-tilt>
          <img src="views/images/logo.png" alt="IMG" />
        </div>



        <form class="login100-form validate-form" action="employeeLogin" method="post">
          <span class="login100-form-title"> Employee Login </span>
          <small style="color: red;"> ${err} </small>
          <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
            <input class="input100" type="text" name="email" placeholder="Email" />
            <span class="focus-input100"></span>
            <span class="symbol-input100">
              <i class="fa fa-envelope" aria-hidden="true"></i>
            </span>
          </div>

          <div class="wrap-input100 validate-input" data-validate="Password is required">
            <input class="input100" type="password" name="password" placeholder="Password" />
            <span class="focus-input100"></span>
            <span class="symbol-input100">
              <i class="fa fa-lock" aria-hidden="true"></i>
            </span>
          </div>

          <div class="container-login100-form-btn">
            <button class="login100-form-btn">Login</button>
          </div>

          <div class="text-center p-t-12">
            <span class="txt1"> </span>
            <a class="txt2" href="/"> Back </a>
          </div>
        </form>
      </div>
    </div>
  </div>

</body>

</html>