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

public class LoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;UTF-8");
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		
		UserDao userDao=new UserDao();
		User user=userDao.login(userName, password);
		HttpSession session = req.getSession();
		if(user!=null){
			session.setAttribute("user", user);
			if(user.getType()==2) {
				req.getRequestDispatcher("/student.jsp").forward(req, resp);
			}
			if(user.getType()==1) {
				req.getRequestDispatcher("/teacher.jsp").forward(req, resp);
			}
			if(user.getType()==0) {
				List<User> listUser =userDao.getStudent();
				session.setAttribute("listUser", listUser);
				req.getRequestDispatcher("/admin.jsp").forward(req, resp);
			}
		}else{
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
		}
	}
}
