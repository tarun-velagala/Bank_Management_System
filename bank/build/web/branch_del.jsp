<%-- 
    Document   : branch_del
    Created on : May 24, 2018, 5:38:51 PM
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
           String branchid= request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/bank";
       Connection con=DriverManager.getConnection(url,"root","admin");
       Statement st=con.createStatement();
        int i=st.executeUpdate("delete from  bdets where branchid='"+branchid+"'"); 
        if(i>0){
                response.sendRedirect("delete.jsp?msg=deleted");
        }
            else{
                    response.sendRedirect("delete.jsp?msg=NotValid");
                    }

            
            
            
            %>
       
        
    </body>
</html>
