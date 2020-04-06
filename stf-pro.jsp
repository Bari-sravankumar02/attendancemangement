<%-- 
    Document   : stf-pro
    Created on : Aug 18, 2018, 1:17:14 PM
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
        <h1>Details</h1>
          <center>
           <table border="10">
               
                   <%
                       
                      
                       String id=(String)session.getAttribute("staffid");
                       Statement st=con.createStatement();
                       ResultSet rs=st.executeQuery("Select * from stfreg where StaffId='"+id+"'");
                       while(rs.next())
                       {
                           %>
                           <div class="f">
                           <tbody>
                             <tr><td bgcolor="cyan"><b>Name</b></td><td><%=rs.getString(1)%></td></tr>
                             <tr><td bgcolor="cyan"><b>Father Name</b></td><td><%=rs.getString(2)%></td></tr>
                             <tr><td bgcolor="cyan"><b>Mobile No</b></td><td><%=rs.getString(3)%></td></tr>
                             <tr><td bgcolor="cyan"><b>Email</b></td><td><%=rs.getString(4)%></td></tr>
                             <tr><td bgcolor="cyan"><b>Date of birth</b></td><td><%=rs.getString(5)%></td></tr>
                             <tr><td bgcolor="cyan"><b>Gender</b></td><td><%=rs.getString(6)%></td></tr>
                             <tr><td bgcolor="cyan"><b>Address</b></td><td><%=rs.getString(7)%></td></tr>
                             <tr><td bgcolor="cyan"><b>Staff id</b></td><td><%=rs.getString(8)%></td></tr>
                           </tbody>
                           </div>
                          </table>
                             <h3>You are the Class teacher for <u style="font-size: 22px;color: red"><%=rs.getString(10)%></u> Branch in <q style="font-size: 22px;color: red"><%=rs.getString(11)%></q></h3>
                       <%}
                       %>
       </center>
    </body>
</html>
