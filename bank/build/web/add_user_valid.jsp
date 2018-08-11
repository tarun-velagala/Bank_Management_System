<%-- 
    Document   : add_user_valid
    Created on : May 28, 2018, 12:18:41 PM
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
            String uname=request.getParameter("uname");
            String upass=request.getParameter("pass");
            String umail=request.getParameter("umail");
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bank";
            Connection con=DriverManager.getConnection(url,"root","admin");
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into udets values('"+uid+"','"+uname+"','"+umail+"','"+upass+"')");        
        if(i>0){
            response.sendRedirect("add_user.jsp?msg=Added");
        }
            else{
                    response.sendRedirect("add_user.jsp?msg=NotValid");
                    }
        
        %>
    </body>
</html>
