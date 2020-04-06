<%-- 
    Document   : add-act
    Created on : Aug 9, 2018, 10:43:33 AM
    Author     : iot
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String studentname=request.getParameter("std");
            String fathername=request.getParameter("ftn");
            String studentmn=request.getParameter("smn");
            String fathermn=request.getParameter("fmn");
            String gender=request.getParameter("gen");
            String DOB=request.getParameter("dob");
            String address=request.getParameter("add");
            String pinno=request.getParameter("pn");
            String semester=request.getParameter("sem");
            String caste=request.getParameter("caste");
            String branch=request.getParameter("brn");
             PreparedStatement ps=con.prepareStatement 
                     ("insert into streg values(?,?,?,?,?,?,?,?,?,?,?)");
             
             ps.setString(1,studentname);
             ps.setString(2,fathername);
             ps.setString(3,studentmn);
             ps.setString(4,fathermn);
             ps.setString(5,gender);
             ps.setString(6,DOB);
             ps.setString(7,address);
             ps.setString(8,pinno);
             ps.setString(9,semester);
             ps.setString(10,caste);
             ps.setString(11,branch);
             
             ps.executeUpdate();
             {
             out.println("student ADD succesfully");
             }
            
        %>
    </body>
</html>
