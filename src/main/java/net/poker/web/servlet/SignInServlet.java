package net.poker.web.servlet;

import net.poker.data.SignInUser;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SignInServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        SignInUser signInUser = (SignInUser)getServletContext().getAttribute(SignInUser.KEY);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int userId = signInUser.signInUser(username, password);
        if (userId > 0) {
            request.getRequestDispatcher("/welcome.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }
}
