
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
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
                        
                      <a class="navbar-brand" href="#">Student Information System</a>
                  <div class="btn-group-vertical">
                    
                  </div>
                   
                      </div>
                  </nav> 
        

<div class="login-form">
          <form action="RegisterServlet" method="post">
              <h2 class="text-center">Registration</h2>
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
                                                
                                                <label class="form-label select-label">User Type</label>
                                               <select class="form-control" id="user" name="user">
                                                  <option  value="1" disabled>chose student or teacher</option>
                                                  <option  value="Student">Student</option>
                                                  <option  value="Teacher">Teacher</option>
                                               </select>   
                                            </div>  
              
                                          <div class="form-group">
                                             <label for="name">User Name</label>
                                             <input name="user_name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter here">
                                          </div>
                                          <div class="form-group">
                                             <label for="password">User Password</label>
                                             <input name="user_password" type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter here">
                                          </div>
                                          
                                           <div class="container">
                                            <button class="btn btn-outline-success">Register</button>
                                           <button class="btn btn-outline-success"><a href="login.jsp">Login</a></button>
                                           </div>

                                    </form>
              
    
    
</div>        
        
    </body>
</html>
