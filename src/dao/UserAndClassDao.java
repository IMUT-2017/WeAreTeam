package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.ConnectionManager;
import database.SQLManager;
import entity.UserAndClass;

public class UserAndClassDao {
	public int GetUserCourseId(int userid){
		UserAndClass userandclass = new UserAndClass();
		// 姝ラ1锛氳幏鍙栦竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 姝ラ2锛氳缃甋QL璇彞鍜屾暟鎹弬鏁�
		String strSQL = "select * from userandclass where (userid=?)";
		Object[] params = new Object[] {userid};

		// 姝ラ3锛氬彂閫丼QL璇彞
		SQLManager sqlManager = new SQLManager();
		ResultSet rs = sqlManager.executeRead(connection, strSQL, params);

		try {
			while (rs.next()) {
				// 杩欎釜娌℃湁0锛屾槸浠�1寮�濮嬭褰曟暟鎹殑
				userandclass.setId(rs.getInt(1));
				userandclass.setUserID(rs.getInt(2));
				userandclass.setClassID(rs.getInt(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		} finally {

			// 姝ラ4锛氬叧闂竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
			connectionManager.closeConnection(connection);
		}

		return userandclass.getClassID();
	}

}
