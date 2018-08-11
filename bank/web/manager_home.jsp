<%-- 
    Document   : manager_home
    Created on : May 25, 2018, 10:47:15 AM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MANAGER HOME</title>
        <style>
            
            .heading h1{
                text-align: left;
                background-size: 100%;
                font-family: Arial, Helvetica, sans-serif;
                font-style: normal;
                background-color: dodgerblue;
                background-size: cover;
                margin: 0 auto;
                padding: 10px 30px;
                color: aliceblue; 
            }
            heading{
                
            }
            body{
                padding: 0;
                margin: 0;
                
            }
            
            .link{
                overflow: hidden;
                background-color: gainsboro;
                
                border-bottom: 1px solid #fff;
                font-family: Arial, Helvetica, sans-serif;
            }
            .link a{
                float: right;
                font-size: 16px;
                color:black;
                display: inline-block;
                
                text-align: center;
                padding: 16px 24px;
                text-decoration: none;
                
            }
            .link a:hover{
                color:dodgerblue;
            }
            .link .back{
                float: left;
                font-size: 16px;
                color:black;
                display: inline-block;
                
                text-align: center;
                padding: 16px 24px;
                text-decoration: none;
                

            }
      
        </style>
    </head>
    <body>
        <div class="heading"><h1>MANAGER HOME</h1></div>
        <div class="link">
            <a href="manager_login.jsp" class="back"> BACK</a>
            <a href="logout.jsp">LOGOUT</a>
            <a href="del_emp.jsp">DELETE EMPLOYEE</a>
        <a href="view_emp_details.jsp">VIEW EMPLOYEE</a>
        <a href="add_emp.jsp" >ADD EMPLOYEE</a>

        </div>
           
        
        
    </body>
</html>
