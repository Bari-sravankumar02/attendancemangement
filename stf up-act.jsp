<%-- 
    Document   : stf up-act
    Created on : Aug 16, 2018, 11:58:01 AM
    Author     : iot
--%>
<%@include file="connection.jsp" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
    </head>
    <body>
     <%
              String staffid=request.getParameter("stid");
              String mn=request.getParameter("mn");
              String addr=request.getParameter("addr");
              String email=request.getParameter("mail");
              String brn=request.getParameter("br");
              String sem=request.getParameter("sem");
              PreparedStatement ps=con.prepareStatement("update stfreg set MobileNo=?,Address=?,Email=?,Branch=?,Semester=? where StaffId='"+staffid+"'");
              ps.setString(1,mn);
              ps.setString(2,addr);
              ps.setString(3,email);
              ps.setString(4,brn);
              ps.setString(5,sem);
              int k=ps.executeUpdate();
              if(k!=0)
              {
                  response.sendRedirect("stf-view.jsp");
              }
              else
                  out.println("Invalid staff id");
              
        %>    
    </body>
</html>
