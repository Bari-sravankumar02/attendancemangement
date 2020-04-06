<%-- 
    Document   : st up-act
    Created on : Aug 16, 2018, 11:33:01 AM
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
              String pinno=request.getParameter("pin");
              String stmn=request.getParameter("stmn");
              String fmn=request.getParameter("fmn");
              String addr=request.getParameter("addr");
              String sem=request.getParameter("sem");
              PreparedStatement ps=con.prepareStatement("update streg set StudentMobileNo=?,FatherMobileNo=?,Address=?,Semester=? where PinNo='"+pinno+"'");
              ps.setString(1,stmn);
              ps.setString(2,fmn);
              ps.setString(3,addr);
              ps.setString(4,sem);
              int k=ps.executeUpdate();
              if(k!=0)
              {
                  
                  %>
                  <jsp:forward page="St-View.jsp"/>
                  <%
                  out.println("updated");
              }
              else
                  out.println("Invalid pin number");
              
        %>    
    </body>
</html>
