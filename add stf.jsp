<%-- 
    Document   : add-stf
    Created on : Aug 10, 2018, 10:11:01 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff</title>
    </head>
    <body>
        <h1 style="color: gold">Staff</h1>
        <table>
            <form action="add stf-act.jsp">
                <tr><td>Name:</td><td><input type="text" name="name" required></td></tr>
                <tr><td>Father Name:</td><td><input type="text" name="Fname" required></td></tr>
                <tr><td>Mobile No:</td><td><input type="number" name="MN" required></td></tr>
                <tr><td>Email:</td><td><input type="email" name="mail" required></td></tr>
                <tr><td>Date of birth:</td><td><input type="date" name="dob" required></td></tr>
                <tr><td>Gender:</td><td><input type="radio" name="Gen" value="male" required>male
                    <input type="radio" name="Gen" value="female" required>female
                    <input type="radio" name="Gen" value="others" required>others</td></tr>
                <tr><td>Address:</td><td><input type="text" name="Ads" required></td></tr>
                <tr><td>Staff Id:</td><td><input type="text" name="Sid" required></td></tr>
                <tr><td>Password:</td><td><input type="password" name="PWD" ></td></tr>
                <tr><td>Branch:</td><td><select name="brn">
                            <option>Civil</option>
                            <option>Computer</option>
                            <option>ECE</option>
                            <option>EEE</option>
                            <option>Mechanical</option>
                        </select></td></tr>
                <tr><td>Semester:</td><td><select name="sem">
                            <option>First Semester</option>
                            <option>Second Semester</option>
                            <option>Third Semester</option>
                            <option>Fourth Semester</option>
                            <option>Fifth Semester</option>
                            <option>Sixth Semester</option>
                        </select></td></tr>
                <tr><td></td><td><button type="submit" value="submit">Submit</button></td>
            </form>
        </table>
    </body>
</html>
