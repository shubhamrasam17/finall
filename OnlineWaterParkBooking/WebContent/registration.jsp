<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Sign Up Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
  body{
    color: #fff;
    background: skyblue;
    font-family: 'Roboto', sans-serif;
  }
    .form-control{
    height: 41px;
    background: #e3e3e3;
    box-shadow: none !important;
    border: none;
  }
  .form-control:focus{
    background: #e2e2e2;
  }
    .form-control, .btn{        
        border-radius: 3px;
    }
  .signup-form{
    width: 390px;
    margin: 30px auto;
   
  }
  .signup-form form{
    color: #999;
    border-radius: 3px;
      margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
  .signup-form h2 {
    color: #333;
    font-weight: bold;
        margin-top: 0;
    }
    .signup-form hr {
        margin: 0 -30px 20px;
    }    
  .signup-form .form-group{
    margin-bottom: 20px;
  }
  .signup-form input[type="checkbox"]{
    margin-top: 3px;
  }
  .signup-form .row div:first-child{
    padding-right: 10px;
  }
  .signup-form .row div:last-child{
    padding-left: 10px;
  }
    .signup-form .btn{        
        font-size: 16px;
        font-weight: bold;
    background: #3598dc;
    border: none;
    min-width: 140px;
    }
  .signup-form .btn:hover, .signup-form .btn:focus{
    background: #2389cd !important;
        outline: none;
  }
    .signup-form a{
    color: #fff;
    text-decoration: underline;
  }
  .signup-form a:hover{
    text-decoration: none;
  }
  .signup-form form a{
    color: #3598dc;
    text-decoration: none;
  }
  .signup-form form a:hover{
    text-decoration: underline;
  }
    .signup-form .hint-text {
    padding-bottom: 15px;
    text-align: center;
    }
    .hr{
        border-top: 1px dashed black;
    }
</style>
</head>
<body>
        <script>
            function checkpass(form) {
                password1 = form.pass.value;
                password2 = form.cpass.value;
                if (password1 == '')
                    alert ("Please enter Password");  
                else if (password2 == '')
                    alert ("Please enter confirm password");
                else if (password1 != password2) {
                    alert ("\nPassword did not match: Please try again...")
                    return false;
                }
                else{
                    alert("Password Match.")
                    return true;
                }
            }
        </script>

<div class="signup-form">
   <form method="post" action="Process/insert" onSubmit = "return checkpass(this)">
    <h2><center>Sign Up</center></h2>
    <hr class="hr">
        <div class="form-group">
      <div class="row">
        <div class="col-xs-6"><input type="text" class="form-control" name="fname" placeholder="First Name" required="required"></div>
        <div class="col-xs-6"><input type="text" class="form-control" name="lname" placeholder="Last Name" required="required"></div>
      </div>          
        </div>
        <div class="form-group">
          <input type="email" class="form-control" name="email" placeholder="Email" required="required">
        </div>
    <div class="form-group">
              <input type="text" class="form-control" name="uname" placeholder="User Name" required="required">
        </div>
        
        
    <div class="form-group">
            <input type="password" class="form-control" name="pass" placeholder="Password" required="required">
        </div>        
       <div class="form-group">
            <input type="password" class="form-control" name="cpass" placeholder="Conform Password" required="required">
        </div>
        <div class="form-group">
            <input type="numeric" class="form-control" name="mobile" placeholder="mobile number" required="required">
        </div>
    <div class="form-group">
        <center><button type="submit" class="btn btn-primary btn-lg">Sign Up</button><br><br><hr class="hr">
            Already have an account? <a href="login.jsp">Login here</a></center>
        </div>
    </form>
</div>
</body>
</html>
