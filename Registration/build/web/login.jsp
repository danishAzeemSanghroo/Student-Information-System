<!DOCTYPE html>
<html lang="en">
<head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Login Form</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
            <style>
                    .login-form {
                            width: 340px;
                    margin: 50px auto;
                    }
                .login-form form {
                    margin-bottom: 15px;
                    background: #f7f7f7;
                    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                    padding: 30px;
                }
                .login-form h2 {
                    margin: 0 0 15px;
                }
                .form-control, .btn {
                    min-height: 38px;
                    border-radius: 2px;
                }
                .btn {        
                    font-size: 15px;
                    font-weight: bold;
                }
                
            </style>
</head>
<body>
    
        <nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
      <form>
    <a class="navbar-brand" href="#">Student Information System</a>
<div class="btn-group-vertical">
  <button type="button" class="btn btn-primary">Home</button>
</div>
  </form>
    </div>
</nav>    
    
    
<div class="login-form">
    <form action="LoginServlet" method="post">
        <h2 class="text-center">Log in</h2>   
            <%
            String msg=request.getParameter("msg");
            if("invalid".equals(msg))
            {
            %>
            <p class="text-danger">Something went wrong! Try Again</p>
            <%} %>
            <%
            if("null".equals(msg))
            {
            %>
            <p class="text-danger">Something went wrong! Try Again</p>
            <%} %>            
        
        <div class="form-group">
            <input type="text" name="username" class="form-control" placeholder="Username" required="required">
        </div>
        <div class="form-group">
            <input type="password" name="pass" class="form-control" placeholder="Password" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </div>
              
    </form>
    <button><a href="registration.jsp">New Register</a></button>
</div>
</body>
</html>                                		