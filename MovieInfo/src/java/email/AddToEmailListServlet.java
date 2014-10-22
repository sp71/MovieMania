package email;

import business.Login;
import business.User;
import java.util.Date;
import data.UserDB;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class AddToEmailListServlet extends HttpServlet
{    
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response)
                         throws ServletException, IOException
    {
        // get parameters from the request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String emailAddress = request.getParameter("emailAddress");

        // create the User object
        User user = new User();
        user.setEmailAddress(emailAddress);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        Login login = new Login();
        Date date = new Date();
        login.setTimeStamp(date.toString());
        UserDB.insertTime(login);
        String url = "";
        String message = "";
        
        if (UserDB.emailExists(user.getEmailAddress()))
        {
            message = "This email address already exists<br>" +
                      "Please enter another email address.";
            url = "/join_email_list.jsp";
        }
        else
        {
            UserDB.insert(user);
            url = "/display_email_entry.jsp";
        }
        
        // store the user and message in the session
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        request.setAttribute("message", message);
        
        // forward the request and response to the view
        RequestDispatcher dispatcher =
             getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);        
    }    
}
