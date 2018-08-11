<%-- 
    Document   : viewbranch
    Created on : May 24, 2018, 5:17:20 PM
    Author     : tarun
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BRANCH DETAILS</title>
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
      
            #details{
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
.heading2 h1{text-align: center;
                background-size: 100%;
                font-family: Arial, Helvetica, sans-serif;
                font-style: normal;
                background-color: dodgerblue;
                background-size: cover;
                margin: 0 auto;
                padding: 10px 30px;
                color: aliceblue;}

#details td, #details th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}

#details tr:nth-child(odd){background-color: #f2f2f2;}

#details tr:hover {background-color: #ddd;}

#details th {
    padding-top: 12px;
    padding-bottom: 12px;
    
    background-color: blueviolet;
    color: white;
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
            <h1>Bank Management System</h1></div>
         <div class="link">
        
             <a href="manager_home.jsp" class="back"> BACK</a>
        <a href="logout.jsp">LOGOUT</a>
        <a href="delete.jsp">DELETE BRANCH</a>
        <a href="view_branch.jsp">VIEW DETAILS</a>
        <a href="add_branch.jsp">ADD BRANCH</a></div>
        
        <div class="heading2">
            <h1 >BRANCH DETAILS</h1></div>
        <table id="details">
            <tr><th>Branch Name</th>
            <th>Branch ID</th>
            <th>Branch Location</th>
            <th>Branch Manager Name</th>
            <th>Manager ID</th></tr>
         
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","admin");
                  Statement st=con.createStatement();
                  ResultSet rs=st.executeQuery("select * from bdets");
                  while(rs.next()){
                      
        %>
        <tr><td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td></tr>
    
                  <%
                      }
               
            %>
        </table>
    </body>
    
</html>
