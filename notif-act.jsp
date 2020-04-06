<%-- 
    Document   : notif-act
    Created on : 21 Nov, 2018, 8:16:48 PM
    Author     : durga
--%>
<%@include file="connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>act</title>
    </head>
    <body>
        <%
            String date=request.getParameter("date");
            String Noti=request.getParameter("Noti");
            PreparedStatement ps=con.prepareStatement 
                     ("insert into notif values(?,?)");
            
            ps.setString(1,date);
             ps.setString(2,Noti);
             ps.executeUpdate();
             {
             out.println("Updated Succesfully");
             }
            
        %>
    </body>
</html>
