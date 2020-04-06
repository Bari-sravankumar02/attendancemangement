<%-- 
    Document   : att-up act
    Created on : Aug 18, 2018, 3:40:06 PM
    Author     : iot
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>act</title>
    </head>
    <body>
        <%
            String id=(String)session.getAttribute("staffid");
            String Pin=request.getParameter("pin");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select Branch,Semester from streg where PinNo='"+Pin+"'");
              if(rs.next())
              {
                 String Branch=rs.getString(1);
                 String Sem=rs.getString(2);
            
                ResultSet res=st.executeQuery("select Branch,Semester from stfreg where StaffId='"+id+"'");
                if(res.next())
                 {
                    String br=res.getString(1);
                    String se=res.getString(2);
                      if(br.equals(Branch)&&se.equals(Sem))
                      {
                  
                          

                       String FirstM=request.getParameter("1M");//First Month Present Days
                       String SecondM=request.getParameter("2M");//Second Month Present Days
                       String ThirdM=request.getParameter("3M");//Third Month Present Days
                       String FourthM=request.getParameter("4M");//Fourth Month Present Days
                       String TotalD=request.getParameter("TD");//Total Presents
                       String TotalA=request.getParameter("TA");//Total Absents 
                       String TotalW=request.getParameter("TWD");//Total Working Days
                       String TotalP=request.getParameter("TPC");//Total Percentage
                       PreparedStatement ps=con.prepareStatement("insert into attst values(?,?,?,?,?,?,?,?,?,?,?)");
             
                       ps.setString(1,Pin);
                       ps.setString(2,Sem);
                       ps.setString(3,Branch);
                       ps.setString(4,FirstM);
                       ps.setString(5,SecondM);
                       ps.setString(6,ThirdM);
                       ps.setString(7,FourthM);
                       ps.setString(8,TotalD);
                       ps.setString(9,TotalA);
                       ps.setString(10,TotalW);
                       ps.setString(11,TotalP);
                       ps.executeUpdate();
                        {
                             out.println("Attendance added succesfully");
                        }
                    }
                  else{
                          out.println("Not matching Your Enter Pin numbers,Semester and Branch form Student Details");
                      }
                }  
                
            }
          else{
                     out.println("Please give the correct pin number");
              }
        %>
    </body>
</html>
