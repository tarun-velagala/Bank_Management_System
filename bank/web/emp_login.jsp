<%-- 
    Document   : emp_login
    Created on : May 25, 2018, 2:31:51 PM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMPLOYEE LOGIN</title>
        <style>
            body{
                background-color: #fff;
                
            }
            .login{
                margin: 20px auto;
                width: 300px;
                padding:30px 25px;
                background: white;
                border: 1px solid #c4c4c4;
            }
            h1.login-title{
                margin: -28px -25px 25px;
                padding: 15px 25px;
                line-height: 30px;
                font-size: 25px;
                font-weight: 300;
                font-family: sans-serif;
                color: rgb(50,50,50);
                text-align: center;
                background: gainsboro;
            }
            .login-input{
                width:285px;
                height: 50px;
                margin-bottom: 25px;
                padding-left: 10px;
                font-size: 15px;
                background: #fff;
                border:1px solid #ccc;
                border-radius: 4px;
            }
            .login-input:focus{
                border-color: #6e8095;
                outline: none;
            }
            .login-button{
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
            .login-button:hover{
                background-color: #91DC5A;
            }
            
            
            
        </style>
    </head>
    <body>
        
        <form action="employ_login_valid.jsp" class="login">
            <h1 class="login-title">EMPLOYEE LOGIN</h1>
           
            <input type="text" name="eid" class="login-input" placeholder="Employee ID" required="" autofocus="">
            <input type="password" name="pass" class="login-input" placeholder="Password" required="" autofocus="">
            <input type="submit" value="Login" class="login-button">
            
        </form>
          <%
        
        if(request.getParameter("msg")!=null){
            if(request.getParameter("msg").equals("valid")){
                
                %>
                <script>
                </script>
                
                
              <%  
            }

else{
%>
<script>alert("Invalid Details");</script>
<%
}
}

        
        %>
        
       
    </body>
</html>
