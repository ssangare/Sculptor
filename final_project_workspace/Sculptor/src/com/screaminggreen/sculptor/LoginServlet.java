package com.screaminggreen.sculptor;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.*;

import com.screamminggreen.datastore.Professor;


@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		PrintWriter out = resp.getWriter();		

		//Website ID
	    String webId = req.getParameter("webId");

		//Get Password
		String password = req.getParameter("password");
				
		if(Professor.getProfessor(webId)==null){			
	    	resp.sendRedirect("/loginpage.jsp?error=true");	    			
		}
		else if(Professor.getProfessor(webId) != null && password.equals(Professor.getProfessor(webId).getProperty("password"))){
	    	out.println("User/pass found!");
		}
	}
}

