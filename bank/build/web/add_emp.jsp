<%-- 
    Document   : add_emp
    Created on : May 25, 2018, 10:58:31 AM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD EMPLOYEE</title>
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
        <div class="heading"><h1>BANK MANAGEMENT SYSTEM</h1></div>
        <div class="link">
        
            <a href="manager_home.jsp" class="back"> BACK</a>
        <a href="logout.jsp">LOGOUT</a>
        <a href="view_emp_details.jsp">VIEW EMPLOYEE</a>
        <a href="add_emp.jsp" >ADD EMPLOYEE</a>
        </div>
        <form action="add_emp_ins.jsp" class="add">
            <h1 class="add-title">ADD EMPLOYEE</h1>
                
                <input type="text" required="" name="ename" class="add-input" required="" placeholder="Employee Name">
                <input type="text" required="" name="eid" class="add-input" required="" placeholder="Employee ID">
                <input type="password" required="" name="password" class="add-input" required="" placeholder="Password">
                <input type="email" required="" name="mail" class="add-input" required="" placeholder="Email">
                <input type="submit" value="Add" class="register">
                
               
        </form>
        <%
        
        if(request.getParameter("msg")!=null){
            if(request.getParameter("msg").equals("Added")){
                
                %>
                <script>alert("Added Successfully");`                                                                                                                               `
                </script>
                
                
              <%  
            }

else{
%>
<script>alert("Not Added ");</script>
<%
}
}

        
        %>
        
        
            </body>
</html>
