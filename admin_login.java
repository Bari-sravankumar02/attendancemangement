package action;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "admin_login", urlPatterns = {"/admin_login"})
public class admin_login extends HttpServlet {

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username=request.getParameter("AdN");
        String password=request.getParameter("Pwd");
        
        if(username!=null&&password!=null)
        {
           if(username.equals("Durga")&&password.equals("Sravan"))
           {
              response.sendRedirect("Admin-Att.jsp");
           }
           else
           {
              out.println("Incorrect password Or Username");
           }
        }
        else
        {
           out.println("Empty Username Or Password");
        }
       
    }

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
