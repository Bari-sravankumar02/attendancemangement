<%-- 
    Document   : att up
    Created on : Aug 18, 2018, 3:01:46 PM
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
       <form action="att-up act.jsp"> <table>
            
                <tr><td>PIN</td><td><input type="text" value="" name="pin" placeholder="PIN" required=""></td></tr>
                <tr><td>1st Month</td><td><input type="number" value="" name="1M" placeholder="1st Month"></td></tr>
                <tr><td>2nd Month</td><td><input type="number" value="" name="2M" placeholder="2nd Month"></td></tr>
                <tr><td>3rd Month</td><td><input type="number" value="" name="3M" placeholder="3rd Month"></td></tr>
                <tr><td>4th Month</td><td><input type="number" value="" name="4M" placeholder="4th Month"></td></tr>
                <tr><td>Total Presents</td><td><input type="number" value="" name="TD" placeholder="Total Presents"></td></tr>
                <tr><td>Total Absents</td><td><input type="number" value="" name="TA" placeholder="Total Absents"></td></tr>
                <tr><td>Total Working Days</td><td><input type="number" value="" name="TWD" placeholder="Total Working Days"></td></tr>
                <tr><td>Total Percentage</td><td><input type="text" value="" name="TPC" placeholder="Total Percentage"></td></tr>
        </table><table>
            <tr><td><button type="submit" value="submit">Submit</button></td>
            <td><button type="reset" value="clear">Clear</button></td></tr>
           </table> </form>
        
    </body>
</html>
