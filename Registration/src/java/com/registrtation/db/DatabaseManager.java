
package com.registrtation.db;

import com.registrtation.beans.Student;
import com.registrtation.beans.User;
import java.sql.Connection;
import java.sql.DriverManager;
import static java.sql.DriverManager.getConnection;
import static java.sql.DriverManager.getConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import static org.hsqldb.jdbc.JDBCDriver.getConnection;

public class DatabaseManager {
   
   


    public static Connection getConnection() throws Exception {
        Connection con = null;
         try {
        Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        //use your path here
        String path = "F:\\Fiverr\\Client35\\Registration.accdb";
        String url = "jdbc:ucanaccess://" + path;
        con = DriverManager.getConnection(url);
        System.out.println("Connection Successful " + con);
       
           } catch (Exception e) {
        }
        
        return con;
    }    
 

    public static int rigisterUser(User user) {
        int status = 0;
        try {
            String query = "insert into user (userType,userName,userPassword) values ('"+user.getUserType()+"','"+user.getUserName()+"','"+user.getUserPassword()+"')  ";
            
            Statement st = getConnection().createStatement();
            status = st.executeUpdate(query);
            st.close();
            System.out.println(query);

        } catch (Exception ee) {
            ee.printStackTrace();
        }
        return status;

    }

    public static User getUser(String userName) throws SQLException, Exception {
		String query="select * from user where userName='"+userName+"'";
		System.out.println(query);
		Statement st=null;
		ResultSet result=null;
                User bean=null;
		try{
			st=getConnection().createStatement();
			result=st.executeQuery(query);
			Vector v=new Vector();
			while(result.next()){
				bean=new User();	
				bean.setUserId(result.getInt("userId") );
                                bean.setUserType(result.getString("userType"));
				bean.setUserName( result.getString("userName") );
				bean.setUserPassword( result.getString("userPassword"));
				
			}
			return bean;
		}finally{
			if(result!=null)result.close();
			if(st!=null)st.close();
		}
	}     
   
    public static int addNewStudent(Student student) {
        int status = 0;
        try {
            String query = "insert into student (stdName,module,results) values ('"+student.getStdName()+"','"+student.getModule()+"','"+student.getResult()+"')  ";
            
            Statement st = getConnection().createStatement();
            status = st.executeUpdate(query);
            st.close();
            System.out.println(query);

        } catch (Exception ee) {
            ee.printStackTrace();
        }
        return status;
    }
    
    
    
}
