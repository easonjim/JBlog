package com.jsoft.jblog.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class ProcessServlet extends HttpServlet {
	
	public void init() throws ServletException 
	{
	     System.out.println("[info] Global Start Up"); 
	}
	
	public void destroy() {
		System.out.println("[info] Global End"); 
	}
}
