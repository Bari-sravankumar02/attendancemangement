<%-- 
    Document   : View
    Created on : Aug 13, 2018, 10:04:52 AM
    Author     : iot
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view</title>
    </head>
    <body bgcolor="aquamarine">
        <h1 style="color: cornflowerblue">Students List</h1>
    <center>
           <table border="10">
               <tr bgcolor="red">
               
                   <td><b>Student Name</b></td>
                   <td><b>Father Name</b></td>
                   <td><b>Student Mobile No</b></td>
                   <td><b>Father Mobile No</b></td>
                   <td><b>Gender</b></td>
                   <td><b>Date of birth</b></td>
                   <td><b>Address</b></td>
                   <td><b>Pin No</b></td>
                   <td><b>Semester</b></td>
                   <td><b>Caste</b></td>
                   <td><b>Branch</b></td>
                   
               </tr>
               <tbody bgcolor="white">
                   <%
                       Statement st=con.createStatement();
                       ResultSet rs=st.executeQuery("Select * from streg");
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
    <td><%=rs.getString(9)%></td>
    <td><%=rs.getString(10)%></td>
    <td><%=rs.getString(11)%></td>
    
</tr>
           
    
                       <%}
                       %>
               </tbody>
           </table>
       </center>
    </body>
</html>
