package com.jsoft.jblog.servlet;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {

	  @Override
	  public void sessionCreated(HttpSessionEvent se) {
	       HttpSession session = se.getSession();
	       System.out.println("[info]SessionCreated");
	  }

	  @Override
	  public void sessionDestroyed(HttpSessionEvent se) {
		  System.out.println("[info]SessionDestroyed");
	  } 
}