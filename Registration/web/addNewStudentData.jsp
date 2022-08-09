<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
 
        <!--   navbar started-->
        <nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Student Information System</a>
<div class="btn-group-vertical">
  <button><a href="teacherLogin.jsp">Back</a></button>
</div>
      
    </div>
  
</nav> 
<!--navbar end-->

<div class="login-form">
    <form action="AddStudent" method="post">
        <h2 class="text-center">Add New Student Data</h2> 
<%
String msg=request.getParameter("msg");
if("success".equals(msg))
{
%> 
  <p class="text-success">Successfully Inserted Data</p>
<%} %>

<%
if("invalid".equals(msg))
{
%>
    <p class="text-danger">Something went wrong! Try Again</p>
<%} %>
        
        <div class="form-group">
            <label for="name">Enter Name</label>
            <input type="text" name="name" class="form-control" placeholder="Enter Name" required="required">
        </div>
        <div class="form-group">
            <label for="module">Enter Module</label>
            <input type="text" name="module" class="form-control" placeholder="Enter Module" required="required">
        </div>
        <div class="form-group">
            <label for="result">Enter Result</label>
            <input type="text" name="result" class="form-control" placeholder="Enter Result" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Add</button>
        </div>
              
    </form>
</div>    

    </body>
</html>
