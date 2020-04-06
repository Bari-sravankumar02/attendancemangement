<%-- 
    Document   : std-det
    Created on : Aug 18, 2018, 10:41:39 AM
    Author     : iot
--%>
<%@include file="connection.jsp" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .pp{
                margin-top: 50px;
            }
        </style>
    </head>
    <body><center>
        <div class="pp">
        <table border="2px">
         <tr bgcolor="cyan">
               
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
                   <%
                       String id=(String)session.getAttribute("staffid");
                       Statement st=con.createStatement();
                       ResultSet res=st.executeQuery("Select Branch,Semester from stfreg where StaffId='"+id+"'");
                       if(res.next())
                       {
                           String B=res.getString(1);
                           String S=res.getString(2);
                         ResultSet rs=st.executeQuery("Select * from streg where Semester='"+S+"' and Branch='"+B+"'");
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
                           </tbody>          
    
                       <%
                         }
                       }
                       %>
               </tbody>
    </table>
        </div>
       </center>
    </body>
</html>
