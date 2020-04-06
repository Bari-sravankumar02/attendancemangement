<%-- 
    Document   : Std-Login
    Created on : Aug 8, 2018, 9:27:53 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
        <style type="text/css">
            body{
                background-image: url(pl/g3.jpg);
                background-size: cover;
            }
            .dd{
                width: 350px;
                height: 200px;
                background-color: rgba(0,0,0,0.4);
                margin-top: 70px;
                padding-top: 50px;
                border-radius: 15px;
                -webkit-border-radius: 15px;
                box-shadow: inset -4px -4px rgba(0,0,0,0.6);
            }
            .dd select[name="sem"]{
                height: 25px;
                border: 0;
                border-radius: 5px;
            }
            .dd input[type="text"]{
                height: 22px;
                width: 150px;
                border:0;
                border-radius: 5px;
                padding-left: 10px;
            }
            .dd button[type="submit"]{
                 background-color: blue;
                height: 25px;
                width: 70px;
                border-radius: 15px;
                -webkit-border-radius: 15px;
                font-weight: bolder; 
                outline: none;
                cursor: pointer;
            }
             .dd button[type="reset"]{
                height: 25px;
                width: 70px;
                border-radius: 15px;
                -webkit-border-radius: 15px;
                font-weight: bolder; 
                cursor: pointer;
                outline: none;
            }
        </style>
    </head>
    <body bgcolor="midnightblue"><center>
        <h1 style="color: aquamarine">Enter the <i><font color="orangered">Pin number</font></i> to check the <font color="orangered">Attendance</font></h1>
        <div class="dd"><table>
            <form action="std-act.jsp">
                <tr><td><b style="font-size: 25px;color:aquamarine">Semister:</b></td><td><select name="sem" style="width: 24vh; height: 3vh; font-size: 17px">
                            <option>First Semester</option>
                            <option>Second Semester</option>
                            <option>Third Semester</option>
                            <option>Fourth Semester</option>
                            <option>Fifth Semester</option>
                            <option>Sixth Semester</option>
                        </select></td></tr>            
            <tr><td><b style="font-size: 23px;color:aquamarine">Enter Pin No:</b></td>
                <td><input type="text" name="pin" maxlength="14" style="width: 24vh; height: 3vh;">
                </td>
            </tr>
        </table><p></p>
            <table>
            <tr><td><button type="submit" value="submit" style="width:12vh; height: 4vh;font-size: 16px;color: white">Submit</button></td>
                <td><button type="reset" value="reset" style="width: 12vh; height: 4vh;background-color: blue;font-size: 16px;color: white"">Reset</button></td></tr>
            </form>
        </table>
        <h3 style="color: cyan">Example Pin Numbers:-"15054 CSE 052","13028 ECE 007"</h3>
        </div>
    </center>
    </body>
</html>
