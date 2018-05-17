package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.ConnectionManager;
import entity.User;

public class ManUserDao {
	private ConnectionManager dc = new ConnectionManager();
	private PreparedStatement ps = null;
	
	private Connection conn=dc.openConnection();//获得数据库的连接
	private ResultSet rs = null;
	//查询类操作
		public List<User> selectUserAll(int type,int pageIndex,int pageNum) {
			List<User> list = new ArrayList<User>();		
			String sql="select * from user where type=?  order by id desc limit ?,?";
			try {
				this.ps=this.conn.prepareStatement(sql);
				ps.setInt(1, type);
				ps.setInt(2, (pageIndex-1)*pageNum);
				ps.setInt(3, pageNum);
				rs=this.ps.executeQuery();
				while(rs.next()){
					User u = new User();
					u.setId(rs.getInt(1));
					u.setLoginname(rs.getString(2));
					u.setUsername(rs.getString(3));
					u.setPassword(rs.getString(4));
					u.setType(rs.getInt(5));
					u.setHead(rs.getString(6));
					list.add(u);
				}
				ps.close();
				rs.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			
			return list;
		}
}
