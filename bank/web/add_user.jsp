<%-- 
    Document   : add_user
    Created on : May 28, 2018, 10:45:13 AM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD USER</title>
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
            .add{
                margin: 20px auto;
                width: 300px;
                padding:30px 25px;
                background: white;
                border: 1px solid #c4c4c4;
            }
            h1.add-title{
                margin: -28px -25px 25px;
                padding: 15px 25px;
                line-height: 30px;
                font-size: 25px;
                font-weight: 300;
                font-family: sans-serif;
                color:black;
                text-align: center;
                background: #f7f7f7;
            }
            .add-input{
                width:285px;
                height: 50px;
                margin-bottom: 25px;
                padding-left: 10px;
                font-size: 15px;
                background: #fff;
                border:1px solid #ccc;
                border-radius: 4px;
            }
            .add-input:focus{
                border-color: #6e8095;
                outline: none;
            }
            .register{
                width:100%;
                height: 50px;
                padding:0;
                font-size: 20px;
                color:#fff;
                text-align: center;
                background: dodgerblue;
                border:0;
                border-radius: 5px;
                cursor: pointer;
                outline: 0;     
            }
            .register:hover{
                background-color: #91DC5A;
            }
            
            
      
        </style>
    </head>
    <body>
        <div class="heading">
        <h1 >BANK MANAGEMENT SYSTEM</h1></div>
        <div class="link">
        
        
        
        <a href="logout.jsp">LOGOUT</a>
        <a href="del_user.jsp">DELETE USER</a>
        <a href="view_user_details.jsp">VIEW USERS</a>
        <a href="add_user.jsp">ADD USER</a>
        </div>

        
        <form action="add_user_valid.jsp" class="add">
            <h1 class="add-title">ADD USER</h1>
            <input type="text" name="uid" class="add-input" required="" placeholder="User ID">
                <input type="text" name="uname" class="add-input" required="" placeholder="User Name">
                <input type="email" required="" name="umail" class="add-input" required="" placeholder="Email">
                <input type="password" name="pass" class="add-input" required="" placeholder="Password">
                
                   <input type="submit" value="Register" class="register">
               
            
        </form>
        <%
            if (request.getParameter("msg") != null) {
                if (request.getParameter("msg").equals("Added")) {
        %>
        <script>
            alert("Branch added Successfully");

        </script>
        <%
            }
            if (request.getParameter("msg").equals("notValid")) {
        %>
        <script>
            alert("Branch not Added");
        </script>
        <%
                }
            }
        %>
    </body>
</html>
