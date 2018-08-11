<%-- 
    Document   : admin_login_valid
    Created on : May 24, 2018, 4:01:53 PM
    Author     : DELL
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
            String name = request.getParameter("uname");
            String pas = request.getParameter("pas");
            Class.forName("com.mysql.jdbc.Driver");
           String url = "jdbc:mysql://localhost:3306/bank";
           Connection con = DriverManager.getConnection(url,"root", "admin");
            Statement st = con.createStatement();
            if (name.equals("admin") && pas.equals("admin")) {
                response.sendRedirect("admin_home.jsp");
            } else {
                response.sendRedirect("admin_login.jsp?mgs=notvalid");
                
            }



        %>
    </body>
</html>
