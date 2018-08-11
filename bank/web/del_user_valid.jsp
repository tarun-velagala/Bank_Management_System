<%-- 
    Document   : del_user_valid
    Created on : May 28, 2018, 2:37:50 PM
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
           String uid= request.getParameter("uid");
            Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/bank";
       Connection con=DriverManager.getConnection(url,"root","admin");
       Statement st=con.createStatement();
        int i=st.executeUpdate("delete  from  udets where uid='"+uid+"'"); 
if(i>0){
    response.sendRedirect("del_user.jsp?msg=deleted");
        }
            else{
                    response.sendRedirect("del_user.jsp?msg=NotValid");
                    }

            
            
            
            %>
       
        
    </body>
</html>
