package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dao.ClassDao;
import dao.UserAndClassDao;
import entity.CourseType;
import entity.User;

public class TeacherServerlet extends HttpServlet {
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
		
		int pageIndex = Integer.parseInt(req.getParameter("pageIndex"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		int type = Integer.parseInt(req.getParameter("type"));
		
		ClassDao classDao=new ClassDao();
		List<CourseType> list = new ArrayList<CourseType>();
		list = classDao.GetCourseType(type, pageIndex, pageNum);
		try {
			list=classDao.GetCourseType(type, pageIndex, pageNum);
			req.setAttribute("pageIndex", pageIndex);
			req.setAttribute("pageNum", pageNum);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("list", list);
			req.getRequestDispatcher("teacher.jsp").forward(req, resp);
		}
}

