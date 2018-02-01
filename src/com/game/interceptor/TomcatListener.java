package com.game.interceptor;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


import com.game.quartz.QuartzJobDispatch;


public class TomcatListener implements ServletContextListener  {
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		try {
			QuartzJobDispatch.gameQuart();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
