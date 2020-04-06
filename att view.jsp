<%-- 
    Document   : att view
    Created on : Aug 20, 2018, 9:40:14 AM
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
        <h1 style="color: cornflowerblue">Attendance</h1>
    <center>
           <table border="10">
               <tr bgcolor="skyblue">
               
                   <td><b>Pin No</b></td>
                   <td><b>Semester</b></td>
                   <td><b>Branch</b></td>
                   <td><b>1st Month</b></td>
                   <td><b>2nd Month</b></td>
                   <td><b>3rd Month</b></td>
                   <td><b>4th Month</b></td>
                   <td><b>Total Presents</b></td>
                   <td><b>Total Absents</b></td>
                   <td><b>Total Working Days</b></td>
                   <td><b>Total Percentage</b></td>
                   
               </tr>
                   <%
                       String id=(String)session.getAttribute("staffid");
                       Statement st=con.createStatement();
                       ResultSet res=st.executeQuery("Select Branch,Semester from stfreg where StaffId='"+id+"'");
                       if(res.next())
                       {
                           String B=res.getString(1);
                           String S=res.getString(2);
             
                       ResultSet rs=st.executeQuery("Select * from attst where Branch='"+B+"' and Semester='"+S+"'");
                       while(rs.next())
                       {
                           %>
                           <tbody>
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
                       }
                       %>
               </tbody>
           </table>
       </center>
    </body>
</html>
