<%-- 
    Document   : st-up
    Created on : Aug 16, 2018, 11:10:52 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1> UPDATE STUDENT DETAILS</h1>
    </center>
    <table>
        <form action="st up-act.jsp">
            <tr><td>Pin No:</td><td><input type="text" name="pin" placeholder="enter pin no" required></td></tr>
            <tr><td>student mobileno:</td><td><input type="number" name="stmn" placeholder="enter student mobileno"></td></tr>
            <tr><td>father mobileno:</td><td><input type="number" name="fmn" placeholder="enter father mobileno"></td></tr>
            <tr><td>address:</td><td><input type="text" name="addr" placeholder="enter address"></td></tr>
            <tr><td>semester:</td><td><select name="sem">
                        <option>First Semester</option>
                        <option>Second Semester</option>
                        <option>Third Semester</option>
                        <option>Fourth Semester</option>
                        <option>Fifth Semester</option>
                        <option>Sixth Semester</option>
                    </select></td></tr>
            <tr><td><button type="submit" value="submit">submit</button></td></tr>
        </form>
    </table>
    </body>
</html>
