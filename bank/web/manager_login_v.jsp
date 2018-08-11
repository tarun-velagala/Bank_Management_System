<%-- 
    Document   : manager_login_v
    Created on : May 25, 2018, 10:14:37 AM
    Author     : tarun
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>MANAGER LOGIN</h1>
        <%
            String id = request.getParameter("mid");
            String pas = request.getParameter("mpass");
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bank";
            Connection con = DriverManager.getConnection(url, "root", "admin");
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from bdets where managerid='"+id+"' and password='"+pas+"'");
            if(rs.next()){
                response.sendRedirect("manager_home.jsp?msg=valid");
            }else{
                 response.sendRedirect("manager_login.jsp?msg=notvalid");
  
            }

            %>
    </body>
</html>
