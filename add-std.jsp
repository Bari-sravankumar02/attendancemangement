<%-- 
    Document   : add-std
    Created on : Aug 8, 2018, 11:21:17 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD STUDENT</title>
    </head>
    <body>
        <h1> ADD STUDENTS </h1>
        <table>
            <form action="add-act.jsp">
                <tr><td>Student Name:</td><td><input type="text" name="std" required></td></tr>
                <tr><td>Father Name:</td><td><input type="text" name="ftn" required></td></tr>
                <tr><td>Student Mobile No:</td><td><input type="number" name="smn" required></td></tr>
                <tr><td>Father Mobile No:</td><td><input type="number" name="fmn" required></td></tr>
                <tr><td>Gender:</td><td><input type="radio" name="gen" value="male" required/>male
                    <input type="radio" name="gen" value="female" required/>female
                    <input type="radio" name="gen" value="others" required/>others</td>
                </tr>
                <tr><td>Date of Birth:</td><td><input type="date" name="dob" required></td></tr>
                <tr><td>Address:</td><td><input type="text" name="add" required></td></tr>
                <tr><td>Pin No:</td><td><input type="text" name="pn" maxlength="14" required></td></tr>
                <tr><td>Semester:</td><td><select name="sem">
                            <option>First Semester</option>
                            <option>Second Semester</option>
                            <option>Third Semester</option>
                            <option>Fourth Semester</option>
                            <option>Fifth Semester</option>
                            <option>Sixth Semester</option>
                        </select></td></tr>
                <tr><td>Caste:</td><td><input type="text" name="caste" required></td></tr>
                <tr><td>Branch:</td><td><select name="brn">
                            <option>Civil</option>
                            <option>Computer</option>
                            <option>ECE</option>
                            <option>EEE</option>
                            <option>Mechanical</option>
                        </select></td></tr>
        </table>
        <table>
            <tr><td><button type="submit" value="submit">Submit</button></td>
                <td><button type="reset" value="reset">Reset</button></td></tr>
        </table>
            </form>
        </table>
    </body>
</html>
