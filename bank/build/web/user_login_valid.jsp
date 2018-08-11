<%-- 
    Document   : user_login_valid
    Created on : May 28, 2018, 2:56:40 PM
    Author     : tarun
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String uid=request.getParameter("uid");
            String upass=request.getParameter("pas");
            Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/bank";
           Connection con = DriverManager.getConnection(url, "root", "admin");
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from udets where uid='"+uid+"' and password='"+upass+"'");
            if(rs.next()){
                response.sendRedirect("user_home.jsp?msg=valid");
            }else{
                 response.sendRedirect("user_login.jsp?msg=notvalid");
  
            }

        
        
        
        
        
        %>
    </body>
</html>
