<%-- 
    Document   : appp
    Created on : May 24, 2018, 3:21:55 PM
    Author     : tarun
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Validation</title>
    </head>
    <body>
        <h1>Validation</h1>
        <%
   
            String bid=request.getParameter("bid");
            String bname=request.getParameter("bname");
            String location =request.getParameter("loc");
            String mname=request.getParameter("mname");
            String mid=request.getParameter("mid");
            String mpass=request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/bank";
            Connection con=DriverManager.getConnection(url,"root","admin");
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into bdets values('"+bname+"','"+bid+"','"+location+"','"+mname+"','"+mid+"','"+mpass+"')");        
        if(i>0){
            response.sendRedirect("add_branch.jsp?msg=Added");
        }
            else{
                    response.sendRedirect("add_branch.jsp?msg=NotValid");
                    }
        
        %>
    </body>
</html>
