<%-- 
    Document   : add_emp_ins
    Created on : May 25, 2018, 11:24:20 AM
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
            String ename=request.getParameter("ename");
            String eid=request.getParameter("eid");
            String epassword=request.getParameter("password");
            String email=request.getParameter("mail");
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bank";
            Connection con = DriverManager.getConnection(url, "root", "admin");
            Statement st = con.createStatement();
            int i=st.executeUpdate("insert into edets values('"+ename+"','"+eid+"','"+epassword+"','"+email+"')"); 
             if(i>0){
                response.sendRedirect("add_emp.jsp?msg=Added");
             }
            else{
                    response.sendRedirect("add_emp.jsp?msg=NotValid");
                    }

            
            
            
            %>
    </body>
</html>
