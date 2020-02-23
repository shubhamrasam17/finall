<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>Login Page</title>
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
<div class="signup-form">
    <form method="post" action="Process/login">
    <h2><center>LOGIN HERE</center></h2>
    <hr class="hr">
  <div class="form-group">
          <input type="text" class="form-control" id="usr" placeholder="Enter Username" name="uname" required>
        </div>
    <div class="form-group">
              <input type="Password" class="form-control" id="pwd" placeholder="Enter Password" name="pass" required>
        </div>
        <div class="form-group">
            &nbsp;&nbsp;&nbsp;<label class="checkbox-inline"><input type="checkbox" required="required"> Remember me</label>
        </div>
<center><button type="submit" class="btn btn-primary btn-lg">LOGIN</button><br><br>
                Yet Not Registered!! <a href="registration.jsp">Register Here</a><br><br><hr class="hr">
           <a href="Forget.jsp">Forgot Password</a>
</center>
    </form>
</div> 
</body>
</html>



