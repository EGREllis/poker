package net.poker.web.servlet;

import net.poker.data.RegisterUser;
import net.poker.data.SignInUser;
import net.poker.model.Constants;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.Logger;

public class RegisterServlet extends HttpServlet {
    private final Logger logger;

    public RegisterServlet() {
        logger = Logger.getLogger(this.getClass().getCanonicalName());
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RegisterUser registerUser = (RegisterUser)getServletContext().getAttribute(RegisterUser.KEY);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");
        boolean success = registerUser.register(username, password, confirm);
        if (success) {
            HttpSession session = request.getSession(true);
            SignInUser signInUser = (SignInUser)getServletContext().getAttribute(SignInUser.KEY);
            int userId = signInUser.signInUser(username, password);
            session.setAttribute(Constants.USER_ID_KEY, userId);
            session.setAttribute(Constants.USERNAME, username);
            request.setAttribute(Constants.USERNAME, username);
            logger.info("Added username ("+username+") to session and request...");
            request.getRequestDispatcher("/welcome.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
