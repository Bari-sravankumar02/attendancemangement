<%-- 
    Document   : stf-view
    Created on : Aug 13, 2018, 10:17:18 AM
    Author     : iot
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff View</title>
    </head>
    <body bgcolor="lightgreen">
        <h1 style="color: blue">Staff list</h1>
               <center>
           <table border="10">
               <tr bgcolor="red">
               
                   <td><b>Name</b></td>
                   <td><b>Father Name</b></td>
                   <td><b>Mobile No</b></td>
                   <td><b>Email</b></td>
                   <td><b>Date of birth</b></td>
                   <td><b>Gender</b></td>
                   <td><b>Address</b></td>
                   <td><b>Staff id</b></td>
                   <td><b>Class teacher from</b></td>
                   
               </tr>
               <tbody bgcolor="aquamarine">
                   <%
                       Statement st=con.createStatement();
                       ResultSet rs=st.executeQuery("Select * from stfreg");
                       while(rs.next())
                       {
                           %>
<tr>
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
    <td><%=rs.getString(6)%></td>
    <td><%=rs.getString(7)%></td>
    <td><%=rs.getString(8)%></td>
    <td><font color="red"><%=rs.getString(10)%></font> Branch in <font color="red"><%=rs.getString(11)%></font></td>
    
</tr>
           
    
                       <%}
                       %>
               </tbody>
           </table>
       </center>
    </body>
</html>
