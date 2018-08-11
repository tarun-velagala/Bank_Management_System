<%-- 
    Document   : admin_home
    Created on : May 24, 2018, 4:13:06 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN HOME</title>
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
        <div class="heading">
            <h1>ADMIN HOME</h1>
        </div>
        <div class="link">
            <a href="index.html" class="back"> BACK</a>
            <a href="logout.jsp">LOGOUT</a>
        <a href="delete.jsp">DELETE BRANCH</a>
        <a href="view_branch.jsp">BRANCH DETAILS</a>
        <a href="add_branch.jsp">ADD BRANCH</a>
        </div>
        <img src="admin-img.jpg" width="100%" height="650px">
    </body>
</html>
