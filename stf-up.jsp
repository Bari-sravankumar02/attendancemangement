<%-- 
    Document   : stf-up
    Created on : Aug 16, 2018, 11:52:52 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
    </head>
    <body>
    <center>
        <h1> UPDATE STAFF DETAILS</h1>
    </center>
    <table>
        <form action="stf up-act.jsp">
            <tr><td>Staff id:</td><td><input type="text" name="stid" placeholder="enter staff id" required></td></tr>
            <tr><td>mobile no:</td><td><input type="number" name="mn" placeholder="enter mobileno"></td></tr>
            <tr><td>address:</td><td><input type="text" name="addr" placeholder="enter address"></td></tr>
            <tr><td>email:</td><td><input type="email" name="mail" placeholder="enter email id"></td></tr>
            <tr><td>Branch:</td><td><select name="br">            
                        <option>Civil</option>
                        <option>Computer</option>
                        <option>ECE</option>
                        <option>EEE</option>
                        <option>Mechanical</option></select></td></tr>
            <tr><td>Semester:</td><td><select name="sem">
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
