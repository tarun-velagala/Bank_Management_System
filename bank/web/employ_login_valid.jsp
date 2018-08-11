<%-- 
    Document   : employ_login_valid
    Created on : Jul 8, 2018, 3:49:35 PM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
    </head>
    <body>
       <%
            String eid = request.getParameter("eid");
          
            Class.forName("com.mysql.jdbc.Driver");
            
                String url = "jdbc:mysql://localhost:3306/bank";
                Connection con = DriverManager.getConnection(url, "root", "admin");
                Statement st = con.createStatement(); 
                ResultSet rs=st.executeQuery("select * from edets where empid ='"+eid+"'");
                if(rs.next()){
                    
                    //session.setAttribute("eid", eid);
                    response.sendRedirect("emp_home.jsp?msg=valid");
                    
                }
                else{
                     response.sendRedirect("emp_login.jsp?msg=not valid");
                }
     
               
                    
              
    
   
        %> 
    </body>
</html>
