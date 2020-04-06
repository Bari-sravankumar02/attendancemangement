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
        <style type="text/css">
            .pp{
                margin-top: 100px;
            }
        </style>
    </head>
    <body bgcolor="aquamarine">
       <center>
           <h1 style="color: cornflowerblue">Attendance
        </h1>
           <div class="pp">
               <table border="10">
           <%
                       String Pinno=request.getParameter("pin");
                       String sem=request.getParameter("sem");
                       session.setAttribute("Pinno", Pinno);
                       Statement st=con.createStatement();
                       ResultSet res=st.executeQuery("select StudentName from streg where PinNo='"+Pinno+"'");
                       while(res.next())
                       {
                           %>
                           <tr><td style="background-color: red">Name</td><td style="background-color: whitesmoke"><%=res.getString(1)%></td></tr>
                           <%
                       }
                       ResultSet rs=st.executeQuery("Select * from attst where PinNo='"+Pinno+"' and Semester='"+sem+"'");
                       if(rs.next())
                       {
                           %>
                           
                           
               <tbody>
               <tr><td style="background-color: red"><b>Pin No</b></td><td style="background-color: whitesmoke"><%=rs.getString(1)%></td></tr>
                  <tr> <td style="background-color: red"><b>Semester</b></td><td style="background-color: whitesmoke"><%=rs.getString(2)%></td></tr>
                   <tr><td style="background-color: red"><b>Branch</b></td><td style="background-color: whitesmoke"><%=rs.getString(3)%></td></tr>
                  <tr> <td style="background-color: red"><b>1st Month</b></td><td style="background-color: whitesmoke"><%=rs.getString(4)%></td></tr>
                   <tr><td style="background-color: red"><b>2nd Month</b></td><td style="background-color: whitesmoke"><%=rs.getString(5)%></td></tr>
                   <tr><td style="background-color: red"><b>3rd Month</b></td><td style="background-color: whitesmoke"><%=rs.getString(6)%></td></tr>
                   <tr><td style="background-color: red"><b>4th Month</b></td><td style="background-color: whitesmoke"><%=rs.getString(7)%></td></tr>
                   <tr><td style="background-color: red"><b>Total Presents</b></td><td style="background-color: whitesmoke"><%=rs.getString(8)%></td></tr>
                   <tr><td style="background-color: red"><b>Total Absents</b></td><td style="background-color: whitesmoke"><%=rs.getString(9)%></td></tr>
                   <tr><td style="background-color: red"><b>Total Working Days</b></td><td style="background-color: whitesmoke"><%=rs.getString(10)%></td></tr>
                   <tr><td style="background-color: red"><b>Total Percentage</b></td><td style="background-color: whitesmoke"><%=rs.getString(11)%></td></tr>
               </tbody>
           </table>
                       <%
                   }
                       else{
                              %>
                                Please give the correct Pin number or  semester                    
           <%
                       }
                       %>
                           </div>       
       </center>
    </body>
</html>
