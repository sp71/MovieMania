/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package email;

import business.User;
import data.UserDB;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class SelectEmailListServlet extends HttpServlet
{    
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response)
                         throws ServletException, IOException
    {
        // get parameters from the request
        String emailAddress = request.getParameter("emailAddress");

        // create the User object
        User user = new User();
        user.setEmailAddress(emailAddress);

        String url = "";
        String message = "";
        
        if (UserDB.emailExists(user.getEmailAddress()))
        {
            user = UserDB.selectUser(emailAddress);
            url = "/select_email_list.jsp";
            message = user.getFirstName() + " " + user.getLastName() + " is associated with this email.\n";
        }
        else
        {
            message = "This email address does not exist for selecting<br>";
            url = "/select_email_list.jsp";
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
