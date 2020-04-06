<%-- 
    Document   : Adm-Login
    Created on : Aug 8, 2018, 10:33:05 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style type="text/css">
            body{
                background: url(pl/m4.jpg);
            }
            h1{
                color: red;
                text-align: center;
            }
            .tt{
                background: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7));
                padding: 70px;
                position: absolute;
                margin-left: 500px;
                border-radius: 20px;
                margin-top: 50px;
            }
            .tt .textbox{
                position: relative;
                
            }
            .tt .textbox input{
                background: transparent;
                padding: 10px 0;
                height: 25px;
                border: none;
                color: darksalmon;
                margin-bottom: 20px;
                outline: none;
                border-bottom: 1px solid antiquewhite;
                font-size: 15px;
            }
            .tt .textbox label{
                position: absolute;
                top: 11px;
                left: 0;
                color: antiquewhite;
                font-size: 17px;
                pointer-events: none;
                transition: 0.2s;
            }
            .tt .textbox input:focus ~ label,
            .tt .textbox input:valid ~ label
            {
                top: -15px;
                left: 0;
                font-size: 20px;
                color: chartreuse;
            }
            .tt button[type="submit"]
            {
                background-color: lawngreen;
                position: absolute;
                margin-left: 60px;
                width: 12vh;
                height: 4vh;
                border-radius: 15px;
                cursor: pointer;
                outline: none;
                
            }
        </style>
    </head>
    <body>
        <h1>Admin Login</h1>
            <form action="admin_login" method="POST">
                <div class="tt">
                    <div class="textbox"><input type="text" name="AdN" Placeholder="Admin Id" required><label>Admin Id</label></div>
                    <div class="textbox"><input type="password" name="Pwd" placeholder="Password" required><label>Password</label></div>
                    <button type="submit" value="Login">LogIn</button>
                </div>
            </form>
    </body>
</html>
