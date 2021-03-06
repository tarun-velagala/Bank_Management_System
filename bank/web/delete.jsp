<%-- 
    Document   : delete.jsp
    Created on : May 24, 2018, 5:29:58 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE BRANCH</title>
        <style>
            body{
                background-color: #fff;
                
            }
            .del{
                margin: 20px auto;
                width: 300px;
                padding:30px 25px;
                background: white;
                border: 1px solid #c4c4c4;
            }
            h1.del-title{
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
            .del-input{
                width:285px;
                height: 50px;
                margin-bottom: 25px;
                padding-left: 10px;
                font-size: 15px;
                background: #fff;
                border:1px solid #ccc;
                border-radius: 4px;
            }
            .del-input:focus{
                border-color: #6e8095;
                outline: none;
            }
            .del-button{
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
            .del-button:hover{
                background-color: #91DC5A;
            }
            
            
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
      
        </style>
       
    </head>
    <body>
        <div class="heading"><h1>BANK MANAGEMENT SYSTEM</h1></div>
        <div class="link"> 
        <a href="logout.jsp">LOGOUT</a>
        <a href="delete.jsp">DELETE BRANCH</a>
        <a href="view_branch.jsp">VIEW DETAILS</a>
        <a href="add_branch.jsp">ADD BRANCH</a></div>
        
        <form action="branch_del.jsp" class="del">
            <h1 class="del-title">DELETE BRANCH</h1>
            <input type="text" name="id" method="text" class="del-input" placeholder="Branch ID">
            <input type="submit" value="ok" class="del-button">
        </form>
        <%
        
        if(request.getParameter("msg")!=null){
            if(request.getParameter("msg").equals("deleted")){
                
                %>
                <script>alert("Branch Deleted Successfully");
                </script>
                
                
              <%  
            }

else{
%>
<script>alert("Not a valid ID ");</script>
<%
}
}

        
        %>
        
        
        

    </body>
</html>
