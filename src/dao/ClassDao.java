package dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.ConnectionManager;
import database.SQLManager;
import entity.CourseType;

public class ClassDao {
	public CourseType GetCourseType(int CourseId) {
		CourseType coursetype = new CourseType();
		// 姝ラ1锛氳幏鍙栦竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
		ConnectionManager connectionManager = new ConnectionManager();
		Connection connection = connectionManager.openConnection();

		// 姝ラ2锛氳缃甋QL璇彞鍜屾暟鎹弬鏁�
		String strSQL = "select * from class where ( id=? )";
		Object[] params = new Object[] {CourseId};

		// 姝ラ3锛氬彂閫丼QL璇彞
		SQLManager sqlManager = new SQLManager();
		ResultSet rs = sqlManager.executeRead(connection, strSQL, params);

		try {
			while (rs.next()) {
				// 杩欎釜娌℃湁0锛屾槸浠�1寮�濮嬭褰曟暟鎹殑
				coursetype.setId(rs.getInt(1));
				coursetype.setClassName(rs.getString(2));
				coursetype.setCoverPaper(rs.getString(3));
				coursetype.setIntroduce(rs.getString(4));
				coursetype.setDate(rs.getString(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return coursetype;
		} finally {

			// 姝ラ4锛氬叧闂竴涓湁鏁堢殑鏁版嵁搴撻摼鎺�
			connectionManager.closeConnection(connection);
		}

		return coursetype;
	}

}
