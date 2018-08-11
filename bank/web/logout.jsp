<%-- 
    Document   : logout
    Created on : May 25, 2018, 2:16:56 PM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        
        
        <%
        
        session.invalidate();
        response.sendRedirect("index.html");
        
        %>
        
    </body>
</html>
