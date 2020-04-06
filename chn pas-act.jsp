<%-- 
    Document   : chn pas-act.jsp
    Created on : Aug 13, 2018, 9:38:07 AM
    Author     : iot
--%>
<%@include file="connection.jsp" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>act</title>
    </head>
    <body>
             <%
              String staffid=request.getParameter("STF");
              String Password=request.getParameter("Paw");
              PreparedStatement ps=con.prepareStatement("update stfreg set Password=? where StaffId='"+staffid+"'");
              ps.setString(1,Password);
              int k=ps.executeUpdate();
              if(k!=0)
                  out.println("updated");
              else
                  out.println("Invalid mobile number");
              
        %>  
    </body>
</html>
