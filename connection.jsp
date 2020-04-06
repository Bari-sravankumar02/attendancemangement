<%-- 
    Document   : conection
    Created on : Aug 8, 2018, 11:09:41 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>connect</title>
    </head>
    <body>
       <%@page import="java.sql.*"%>
       <%@page import="java.io.*" %>
       <%! Connection con;%>
       <% Class.forName("com.mysql.jdbc.Driver");
           
           
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","1910");
           //out.println("connected"); 
       
       %>
        </body>
</html>
