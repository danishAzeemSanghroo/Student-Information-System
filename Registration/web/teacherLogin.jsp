<%@page import="com.registrtation.beans.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.registrtation.db.DatabaseManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Data</title>
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
  <button><a href="login.jsp">Logout</a></button>
</div>
      
    </div>
  </div>
</nav>    
    
    
    
<table class="table">
<thead>
       <tr>
          <th scope="col">Student ID</th>
            <th scope="col">Name</th>
            <th scope="col">Module</th>
            <th scope="col">Result</th>
           
          </tr>
        </thead>
        <tbody>
<%

try{
		Connection con=DatabaseManager.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from student");
		while(rs.next())
		{
			
			%>
           <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
         
            </tr>
<%

}
}

 catch(Exception e){
	
}
 %>
        </tbody>
      </table>
        
      <br>
      <br>
      <button><a href="addNewStudentData.jsp">Add New</a></button>
      <br>

</body>
</html>