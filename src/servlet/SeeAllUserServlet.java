package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.ManUserDao;

import entity.User;

public class SeeAllUserServlet extends HttpServlet {
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
		ManUserDao muserDao=new ManUserDao();
		List<User> list = new ArrayList<User>();
		try {
			list=muserDao.selectUserAll(type, pageIndex, pageNum);
			req.setAttribute("pageIndex", pageIndex);
			req.setAttribute("pageNum", pageNum);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		req.setAttribute("list", list);
		if(type==1){
			req.getRequestDispatcher("manageteacher.jsp").forward(req, resp);
		}else if(type==2){
			req.getRequestDispatcher("managestudent.jsp").forward(req, resp);
		}
		
		
	}
}
