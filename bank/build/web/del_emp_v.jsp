<%-- 
    Document   : del_emp_v
    Created on : May 28, 2018, 10:33:54 AM
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
           String empid= request.getParameter("eid");
            Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/bank";
       Connection con=DriverManager.getConnection(url,"root","admin");
       Statement st=con.createStatement();
        int i=st.executeUpdate("delete from edets where empid='"+empid+"'"); 
if(i>0){
    response.sendRedirect("del_emp.jsp?msg=deleted");
        }
            else{
                    response.sendRedirect("del_emp.jsp?msg=NotValid");
                    }

            
            
            
            %>
       
        
    </body>
</html>
