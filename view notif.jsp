<%-- 
    Document   : view notif
    Created on : 21 Nov, 2018, 8:23:55 PM
    Author     : durga
--%>
<%@include file="connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1 style="color: red">Notifications</h1>
        <table border="5px" style="margin-top: 70px">
            <tr style="background-color: skyblue; font-size: 21px;"><td>Dates</td><td>Notifications</td></tr>
            <tbody>
            <%
                       Statement st=con.createStatement();
                       ResultSet rs=st.executeQuery("Select * from notif");
                       while(rs.next())
                       {
            %>
            <tr> <td><%=rs.getString(1)%></td><td><%=rs.getString(2)%></td></tr>
            <%}
            %>
            </tbody>
        </table>
    </center>
    </body>
</html>
