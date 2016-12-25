package com.jsoft.jblog.toolsbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {
    private final String url = "jdbc:mysql://localhost:3306/jblog?useUnicode=true&characterEncoding=utf-8";
    private final String userName = "root";
    private final String password = "root";
    private Connection con = null;
    private Statement stm=null;
    
    /* 通过构造方法加载数据库驱动 */
    public DB(){
    	try {
    		Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    	} catch (Exception e) {
    		e.printStackTrace();
    		System.out.println("[info]加载数据库驱动失败！");
    	}    	
    }
    /* 创建数据库连接 */
    public void createCon() {
        try {
            con = DriverManager.getConnection(url, userName, password);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("[info]获取数据库连接失败！");
        }
    }
    /* 获取Statement对象 */
    public void getStm(){
   		createCon();
    	try {
			stm=con.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("[info]创建Statement对象失败！");
		}
    }
    /** 
     * @功能 对数据库的增加、修改和删除的操作
     * @参数 sql为要执行的SQL语句
     * @返回值 boolean型值 
     */
    public boolean executeUpdate(String sql) {
    	System.out.println(sql);
        boolean mark=false;
    	try {
    		getStm();
            int iCount = stm.executeUpdate(sql);
            if(iCount>0)            	
            	mark=true;            
            else
            	mark=false;
        } catch (Exception e) {
            e.printStackTrace();
		    mark=false;
        }
        return mark;
    }
    /* 查询数据库 */
    public ResultSet executeQuery(String sql) {
        ResultSet rs=null;
        try {
            getStm();
            try {
                rs = stm.executeQuery(sql);
            } catch (Exception e) {
            	e.printStackTrace();
                System.out.println("[info]查询数据库失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();          
        }
        return rs;
    }
    /* 关闭数据库的操作 */
    public void closed() {
    	if(stm!=null)
			try {
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("[info]关闭stm对象失败！");
			}
    	if(con!=null)
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("[info]关闭con对象失败！");
			}
    }
}
