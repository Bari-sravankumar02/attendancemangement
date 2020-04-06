<%-- 
    Document   : Stf-Login
    Created on : Aug 8, 2018, 10:48:23 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Login</title>
        <style type="text/css">
            body{
                background-image: url(pl/m4.jpg);
                background-size: cover;
                font-family: sans-serif;
            }
            h1{
                color: orangered;
                text-align: center;
                
            }
            .d{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                width: 150px;
                padding: 70px;
                background: rgba(0,0,0,0.6);
                border-radius: 150px;
                box-shadow:  inset -4px -4px rgba(0,0,0,0.9);
                
            }
            .d .inputbox{
                position: relative;
            }
            .d .inputbox input{
                width: 150px;
                padding: 10px;
                color: #fff;
                outline: none;
                background: transparent;
                border: none;
                border-bottom: 1px solid;
                margin-bottom: 30px;
            } 
            .d .inputbox label{
                position: absolute;
                top: -20px;
                color: #fff;
            }
            .d input[type="submit"]
            {
                height: 4.5vh;
                width: 14vh;
                border-radius: 15px;
                font-weight: bolder;
                background-color: blue;
                color: white;
                font-size: 16px;
                outline: none;
                cursor: pointer;
            } 
        </style>
    </head>
    <body>
        <h1> Staff Login</h1>
        <div class="d">
         <form action="stf act.jsp">
             <div class="inputbox"><label>Staff Id:</label><input type="text" name="Sti" Placeholder="Staff Id" required></div>
             <div class="inputbox"><label>Password:</label><input type="password" name="Pwd" placeholder="Password"></div>
                <input type="submit" value="Login">
            </form>
        </div>
    </body>
</html>
