package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {

	// 方法1：获取一个有效的数据库链接对象
	public Connection openConnection(){
		try {
			// 加载链接驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 设置数据库链接参数
			String account = "root";
			String password = "";
			String url = "jdbc:mysql://39.107.243.110:3306/wlclass?useUnicode=true&characterEncoding=utf8";
			// 使用DriverManager获取一个有效链接
			Connection connection = DriverManager.getConnection(url, account, password);
			return connection;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	// 方法2：关闭一个有效的数据库链接对象
	public void closeConnection(final Connection connection){
		if(connection != null){
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	
}
