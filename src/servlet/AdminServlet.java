package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import entity.User;

public class AdminServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;UTF-8");
		String id = req.getParameter("delete");// 获取要调用的方法，其中的value="method"是自己约定的
		int userID=-1;
		if (null != id)
			userID = Integer.parseInt(id);
		UserDao userDao = new UserDao();
		HttpSession session = req.getSession();
		if (userID != -1)
			delete(userDao, userID);
		List<User> listUser = userDao.getStudent();
		session.setAttribute("listUser", listUser);
		req.getRequestDispatcher("/admin.jsp").forward(req, resp);
	}

	public boolean delete(UserDao userDao, int userid) {

		String strSql = "delete from user where id=? ";
		Object[] params = new Object[] { userid };
		boolean falge = userDao.deleteStudent(strSql, params);
		return falge;
	}
}