package com.jsoft.jblog.toolsbean;

/**
 * 防SQL注入过滤
 *
 */
public class SqlInject {

	public static String TransactSQLInjection(String str) {		
		String retStr = str
				// 半角括号替换为全角括号
				.replaceAll(".*([';]+|(--)+).*", " ")
				.replace("'", "''")
				.replace(";", "；")
				.replace("(", "（")
				.replace(")", "）")
				// 去除执行SQL语句的命令关键字
				.replace("select", "")
				.replace("insert", "")
				.replace("update", "")
				.replace("delete", "")
				.replace("drop", "")
				.replace("truncate", "")
				.replace("declare", "")
				.replace("xp_cmdshell", "")
				.replace("/add", "")

				.replace("net user", "")

				// 去除执行存储过程的命令关键字
				.replace("exec", "")
				.replace("execute", "")

				// 去除系统存储过程或扩展存储过程关键字
				.replace("xp_", "x p_")
				.replace("sp_", "s p_")

				// 防止16进制注入
				.replace("0x", "0 x");
		// 去除执行SQL语句的命令关键字

		return retStr;
	}
}
