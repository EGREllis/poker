package net.poker.web.listener;

import net.poker.data.RegisterUser;
import net.poker.data.SignInUser;
import net.poker.data.simple.UserMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ApplicationStartListener implements ServletContextListener {
    private final Logger logger;

    public ApplicationStartListener() {
        logger = Logger.getLogger(this.getClass().getCanonicalName());
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        logger.info("Context initialized (info): "+servletContextEvent.getServletContext().getServletContextName());
        logger.log(Level.ALL, "Context initialized (all): "+servletContextEvent.getServletContext().getServletContextName());
        System.err.println("Context initialized (stderr):" +servletContextEvent.getServletContext().getServletContextName());
        System.out.println("Context initialized (stdout):" +servletContextEvent.getServletContext().getServletContextName());

        UserMap userMap = new UserMap();
        servletContextEvent.getServletContext().setAttribute(RegisterUser.KEY, userMap);
        servletContextEvent.getServletContext().setAttribute(SignInUser.KEY, userMap);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        logger.info("Context destroyed: "+servletContextEvent.getServletContext().getServletContextName());
        System.err.println("Context destroyed (stderr):" +servletContextEvent.getServletContext().getServletContextName());
        System.out.println("Context initialized (stdout):" +servletContextEvent.getServletContext().getServletContextName());
    }
}
