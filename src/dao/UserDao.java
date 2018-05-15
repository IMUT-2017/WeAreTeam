package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.ConnectionManager;
import database.SQLManager;
import database.TransactionManager;
import entity.User;

public class UserDao {
	//查询类操作
	public User login(String account, String password) {
		User user=new User();
		// 步骤1：获取一个有效的数据库链接
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 步骤2：设置SQL语句和数据参数
		String strSQL = "select * from user where (loginname=? and password=?)";
		Object[] params = new Object[] { account, password };

		// 步骤3：发送SQL语句
		SQLManager sqlManager = new SQLManager();
		ResultSet rs = sqlManager.executeRead(connection, strSQL, params);

		try {
			while (rs.next()) {
				// 这个没有0，是从1开始记录数据的
				user.setId(rs.getInt(1));
				user.setLoginname(rs.getString(2));
				user.setUsername(rs.getString(3));
				user.setPassword(rs.getString(4));
				user.setType(rs.getInt(5));
				user.setHead(rs.getString(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return user;
		} finally {

			// 步骤4：关闭一个有效的数据库链接
			connectionManager.closeConnection(connection);
		}

		return user;
	}
	//增加类操作
	public boolean insertRecord(String loginname,String username,String password,int type,String head) {
		String sql="insert into user values(?,?,?,?,?)";
		Object[] params = new Object[]{loginname,username,password,type,head};
			// 更新数据
			// 步骤1：获取一个有效的z数据库链接
			ConnectionManager connectionManager = new ConnectionManager();
			Connection connection = connectionManager.openConnection();

			// 步骤2：开启一个事务处理（只有写操作的时候使用事务）
			TransactionManager transactionManager = new TransactionManager();
			transactionManager.beginTransaction(connection);

			// 步骤4：发送SQL语句
			SQLManager sqlManager = new SQLManager();
			int res = sqlManager.executeWrite(connection, sql,params);

			// 步骤5：根据数据库执行结果提交或回滚事务
			if (res > 0) {
				transactionManager.commitTransaction(connection);
				return true;
			} else {
				transactionManager.rollbackTransaction(connection);
			}

			// 步骤6：关闭一个有效的数据库链接
			connectionManager.closeConnection(connection);
			return false;
	}
	//删除类操作
	public boolean deleteStudent(final String strSQL, final Object... params) {
		//参数形式如下
		//String strSQL = "delete from user where id=? ";
		//Object[] params = new Object[] { id };
		//user.deleteStudent(strSql,params);
		
		
		
		
		// 更新数据
		// 步骤1：获取一个有效的数据库链接
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 步骤2：开启一个事务处理（只有写操作的时候使用事务）
		TransactionManager transactionManager = new TransactionManager();
		transactionManager.beginTransaction(connection);

		// 步骤4：发送SQL语句
		SQLManager sqlManager = new SQLManager();
		int res = sqlManager.executeWrite(connection, strSQL, params);

		// 步骤5：根据数据库执行结果提交或回滚事务
		if (res > 0) {
			transactionManager.commitTransaction(connection);
			return true;
		} else {
			transactionManager.rollbackTransaction(connection);
		}

		// 步骤6：关闭一个有效的数据库链接
		connectionManager.closeConnection(connection);
		return false;
	}
	//修改类操作
	public boolean updateStudent(final String strSQL, final Object... params) {
		//参数形式如下
		//String strSQL = "delete from user where id=? ";
		//Object[] params = new Object[] { id };
		//user.deleteStudent(strSql,params);
		
		
		
		
		// 更新数据
		// 步骤1：获取一个有效的数据库链接
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 步骤2：开启一个事务处理（只有写操作的时候使用事务）
		TransactionManager transactionManager = new TransactionManager();
		transactionManager.beginTransaction(connection);

		// 步骤4：发送SQL语句
		SQLManager sqlManager = new SQLManager();
		int res = sqlManager.executeWrite(connection, strSQL, params);

		// 步骤5：根据数据库执行结果提交或回滚事务
		if (res > 0) {
			transactionManager.commitTransaction(connection);
			return true;
		} else {
			transactionManager.rollbackTransaction(connection);
		}

		// 步骤6：关闭一个有效的数据库链接
		connectionManager.closeConnection(connection);
		return false;
	}
}
