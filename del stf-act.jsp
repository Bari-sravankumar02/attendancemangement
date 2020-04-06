<%-- 
    Document   : del stf-act
    Created on : Aug 13, 2018, 10:55:43 AM
    Author     : iot
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>act</title>
    </head>
    <body>
           <%
            String staffid=request.getParameter("del");
            Statement st=con.createStatement();
            st.executeUpdate("delete from stfreg where StaffId='"+staffid+"'");
            out.println("Deleted Sucessfully");
            %>
    </body>
</html>
