<%-- 
    Document   : chn-pas
    Created on : Aug 13, 2018, 9:26:58 AM
    Author     : iot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>password</title>
    </head>
    <body>
        <h1>Change password</h1>
        <table>
            <form action="chn pas-act.jsp">
                <tr><td>Staff id</td><td><input type="text" name="STF" placeholder="Staff Id" required></td></tr>
                <tr><td>Password</td><td><input type="password" name="Paw" placeholder="Password" required></td></tr>
                <tr><td>Conform password</td><td><input type="password" name="CPWD" placeholder="Conform password" required></td></tr>
                <tr><td></td><td><button type="submit" value="submit" onClick="return check(this.form)">Submit</button></td></tr>
            </form>
        </table>
           <script language="javascript">  
        function check(form)
        {
            if(form.Paw.value==form.CPWD.value&&form.CPWD.value==form.Paw.value)
                {
                    return true;
                }
                else
                    {
                        alert("Error:passwords are not matching");
                        return false;
                    }
        }
    </script>
    </body>
</html>
