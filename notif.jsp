<%-- 
    Document   : notif
    Created on : 21 Nov, 2018, 3:25:26 PM
    Author     : durga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notifications</title>
    </head>
    <body>
        <form action="notif-act.jsp">
    <center>
        <h1 style="color: red">NOTIFICATIONS UPDATE</h1>
        Date:-<input type="date" name="date"><br><br>
        Notify:-<input type="text" name="Noti" style="width: 500px; margin-left: 5px; padding-left: 5px; border: none; outline: none; border-bottom: 1px solid;">
        <br><br><button type="submit" value="submit">Submit</button>
    </center>
        </form>
    </body>
</html>
