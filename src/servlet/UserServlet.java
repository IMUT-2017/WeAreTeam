package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import entity.User;

public class UserServlet extends HttpServlet {
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
			session.setAttribute("message", "Login Success!");
			if(user.getType()==2)
				req.getRequestDispatcher("/student.jsp").forward(req, resp);
			if(user.getType()==1)
				req.getRequestDispatcher("/teacher.jsp").forward(req, resp);
			if(user.getType()==0)
				req.getRequestDispatcher("/admin.jsp").forward(req, resp);
		}else{
			session.setAttribute("message", "Login Failed! Please try again!");
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
		}
	}
}
