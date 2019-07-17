package ch07_02;

import java.util.Collection;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class SelectMemberDataListener implements ServletContextListener {



	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event)  { 
         ServletContext context = event.getServletContext();
         String dbString = context.getInitParameter("DBString");
         MemberDao dao = new MemberDao(dbString);
         Collection<MemberBean> col = dao.select();
         context.setAttribute("contextMemberBean", col);
    }
	
}
