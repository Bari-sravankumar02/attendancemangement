<%-- 
    Document   : stf act
    Created on : Aug 10, 2018, 11:01:03 AM
    Author     : iot
--%>
<%@include file="connection.jsp"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>act</title>
    </head>
    <body>
         <%  
             String staffid=request.getParameter("Sti");
             String Password=request.getParameter("Pwd");
             session.setAttribute("staffid", staffid);
             
             
             Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select StaffId,Password from stfreg where StaffId='"+staffid+"'");
            if(rs.next())
            {
                String s=rs.getString(1);
                String p=rs.getString(2);
                if(s.equals(staffid)&&p.equals(Password))
                {
                    response.sendRedirect("stf home.jsp");
                }
                else
                {
                  %>
                  <jsp:forward page="error.jsp"/>
                  <%
                }
            }
            else
            {
               out.println("Please give the correct staff id or password");
            }
        %>
    </body>
</html>
