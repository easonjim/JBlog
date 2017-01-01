/** 
 * 读取配置文件
 */
package com.jsoft.jblog.toolsbean;

import java.io.File;
import java.net.URL;

import org.apache.commons.configuration.Configuration;
import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.ConfigurationFactory;
import org.apache.commons.lang.exception.NestableException;

/**
 * @author advance
 * 
 */
public class ConfigHelper {
	public ConfigHelper(){
	}
	/**
	 * 读取配置文件
	 * @param strfile
	 * @return
	 * @throws NestableException 
	 */
	public static Configuration getConfig(String strfile) throws NestableException{
		Configuration config = null;
		try {
			ConfigurationFactory factory = new ConfigurationFactory(strfile);
//			URL configURL = new File(strfile).toURL();
//			factory.setConfigurationFileName(configURL.toString());
			config = factory.getConfiguration();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return config;
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//ConfigHelper ch = new ConfigHelper();
		//ch.test();
		try{
			Configuration config = getConfig("config.xml");
			String backColor = config.getString("colors.background");
			System.out.println("color: " + backColor);
			config = null;
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
