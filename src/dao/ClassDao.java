package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.ConnectionManager;
import database.SQLManager;
import entity.CourseType;
import entity.User;

public class ClassDao {
	
	private ConnectionManager dc = new ConnectionManager();
	private PreparedStatement ps = null;
	
	private Connection conn=dc.openConnection();//鑾峰緱鏁版嵁搴撶殑杩炴帴
	private ResultSet rs = null;
	
	public List<CourseType> GetCourseType(int type,int pageIndex,int pageNum) {
		List<CourseType> list = new ArrayList<CourseType>();
		String sql = "select * from class where ( id=? )";
		try {
			this.ps=this.conn.prepareStatement(sql);
			ps.setInt(1, type);
			ps.setInt(2, (pageIndex-1)*pageNum);
			ps.setInt(3, pageNum);
			rs=this.ps.executeQuery();
			while(rs.next()){
				CourseType c = new CourseType();
				c.setId(rs.getInt(1));
				c.setClassName(rs.getString(2));
				c.setCoverPaper(rs.getString(3));
				c.setIntroduce(rs.getString(4));
				c.setDate(rs.getString(6));
				list.add(c);
			}
			ps.close();
			rs.close();
		} catch (SQLException e) {
			// TODO 鑷姩鐢熸垚鐨� catch 鍧�
			e.printStackTrace();
		}
		
		return list;
	}
	

}
