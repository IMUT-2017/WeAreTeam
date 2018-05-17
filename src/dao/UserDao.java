package dao;

import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.ConnectionManager;
import database.SQLManager;
import database.TransactionManager;
import entity.User;

public class UserDao {
	//鏌ヨ绫绘搷浣�
	public User login(String account, String password) {
		User user=new User();
		// 姝ラ1锛氳幏鍙栦竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 姝ラ2锛氳缃甋QL璇彞鍜屾暟鎹弬鏁�
		String strSQL = "select * from user where (loginname=? and password=?)";
		Object[] params = new Object[] { account, password };

		// 姝ラ3锛氬彂閫丼QL璇彞
		SQLManager sqlManager = new SQLManager();
		ResultSet rs = sqlManager.executeRead(connection, strSQL, params);

		try {
			while (rs.next()) {
				// 杩欎釜娌℃湁0锛屾槸浠�1寮�濮嬭褰曟暟鎹殑
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

			// 姝ラ4锛氬叧闂竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
			connectionManager.closeConnection(connection);
		}

		return user;
	}
	//澧炲姞绫绘搷浣�
	public boolean insertRecord(String loginname,String username,String password,int type,String head) {
		String sql="insert into user values(?,?,?,?,?)";
		Object[] params = new Object[]{loginname,username,password,type,head};
			// 鏇存柊鏁版嵁
			// 姝ラ1锛氳幏鍙栦竴涓湁鏁堢殑z鏁版嵁搴撻摼鎺�
			ConnectionManager connectionManager = new ConnectionManager();
			Connection connection = connectionManager.openConnection();

			// 姝ラ2锛氬紑鍚竴涓簨鍔″鐞嗭紙鍙湁鍐欐搷浣滅殑鏃跺�欎娇鐢ㄤ簨鍔★級
			TransactionManager transactionManager = new TransactionManager();
			transactionManager.beginTransaction(connection);

			// 姝ラ4锛氬彂閫丼QL璇彞
			SQLManager sqlManager = new SQLManager();
			int res = sqlManager.executeWrite(connection, sql,params);

			// 姝ラ5锛氭牴鎹暟鎹簱鎵ц缁撴灉鎻愪氦鎴栧洖婊氫簨鍔�
			if (res > 0) {
				transactionManager.commitTransaction(connection);
				return true;
			} else {
				transactionManager.rollbackTransaction(connection);
			}

			// 姝ラ6锛氬叧闂竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
			connectionManager.closeConnection(connection);
			return false;
	}
	//鍒犻櫎绫绘搷浣�
	public boolean deleteStudent(final String strSQL, final Object... params) {
		//鍙傛暟褰㈠紡濡備笅
		//String strSQL = "delete from user where id=? ";
		//Object[] params = new Object[] { id };
		//user.deleteStudent(strSql,params);
		
		
		
		
		// 鏇存柊鏁版嵁
		// 姝ラ1锛氳幏鍙栦竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 姝ラ2锛氬紑鍚竴涓簨鍔″鐞嗭紙鍙湁鍐欐搷浣滅殑鏃跺�欎娇鐢ㄤ簨鍔★級
		TransactionManager transactionManager = new TransactionManager();
		transactionManager.beginTransaction(connection);

		// 姝ラ4锛氬彂閫丼QL璇彞
		SQLManager sqlManager = new SQLManager();
		int res = sqlManager.executeWrite(connection, strSQL, params);

		// 姝ラ5锛氭牴鎹暟鎹簱鎵ц缁撴灉鎻愪氦鎴栧洖婊氫簨鍔�
		if (res > 0) {
			transactionManager.commitTransaction(connection);
			return true;
		} else {
			transactionManager.rollbackTransaction(connection);
		}

		// 姝ラ6锛氬叧闂竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
		connectionManager.closeConnection(connection);
		return false;
	}
	//淇敼绫绘搷浣�
	public boolean updateStudent(final String strSQL, final Object... params) {
		//鍙傛暟褰㈠紡濡備笅
		//String strSQL = "delete from user where id=? ";
		//Object[] params = new Object[] { id };
		//user.deleteStudent(strSql,params);
		
		
		
		
		// 鏇存柊鏁版嵁
		// 姝ラ1锛氳幏鍙栦竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 姝ラ2锛氬紑鍚竴涓簨鍔″鐞嗭紙鍙湁鍐欐搷浣滅殑鏃跺�欎娇鐢ㄤ簨鍔★級
		TransactionManager transactionManager = new TransactionManager();
		transactionManager.beginTransaction(connection);

		// 姝ラ4锛氬彂閫丼QL璇彞
		SQLManager sqlManager = new SQLManager();
		int res = sqlManager.executeWrite(connection, strSQL, params);

		// 姝ラ5锛氭牴鎹暟鎹簱鎵ц缁撴灉鎻愪氦鎴栧洖婊氫簨鍔�
		if (res > 0) {
			transactionManager.commitTransaction(connection);
			return true;
		} else {
			transactionManager.rollbackTransaction(connection);
		}

		// 姝ラ6锛氬叧闂竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
		connectionManager.closeConnection(connection);
		return false;
	}
	
	public List<User> getStudent() {
		List<User> list = new ArrayList<User>();
		// 步骤1：获取一个有效的数据库链接
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 步骤2：设置SQL语句和数据参数
		String strSQL = "select * from user";

		// 步骤3：发送SQL语句
		SQLManager sqlManager = new SQLManager();
		ResultSet rs = sqlManager.executeRead(connection, strSQL);

		try {
			while (rs.next()) {
				// 这个没有0，是从1开始记录数据的
				User user=new User();
				user.setId(rs.getInt(1));
				user.setLoginname(rs.getString(2));
				user.setUsername(rs.getString(3));
				user.setPassword(rs.getString(4));
				user.setType(rs.getInt(5));
				user.setHead(rs.getString(6));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return  null;
		} finally {

			// 步骤4：关闭一个有效的数据库链接
			connectionManager.closeConnection(connection);
		}

		return list;
	}
}
