<%-- 
    Document   : add stf-act
    Created on : Aug 10, 2018, 10:29:43 AM
    Author     : iot
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>stf act</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            String fathername=request.getParameter("Fname");
            String mn=request.getParameter("MN");
            String email=request.getParameter("mail");
            String DOB=request.getParameter("dob");
            String gender=request.getParameter("Gen");
            String address=request.getParameter("Ads");
            String staffid=request.getParameter("Sid");
            String password=request.getParameter("PWD");
            String brn=request.getParameter("brn");
            String sem=request.getParameter("sem");
             PreparedStatement ps=con.prepareStatement 
                     ("insert into stfreg values(?,?,?,?,?,?,?,?,?,?,?)");
             
             ps.setString(1,name);
             ps.setString(2,fathername);
             ps.setString(3,mn);
             ps.setString(4,email);
             ps.setString(5,DOB);
             ps.setString(6,gender);
             ps.setString(7,address);
             ps.setString(8,staffid);
             ps.setString(9,password);
             ps.setString(10,brn);
             ps.setString(11,sem);
             
             ps.executeUpdate();
             {
             out.println("staff ADD succesfully");
             }
            
        %>
    </body>
</html>
