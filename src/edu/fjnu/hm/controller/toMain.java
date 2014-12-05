package edu.fjnu.hm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fjnu.hm.dao.DBHelp;

public class toMain extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public toMain() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String rand=(String)request.getSession().getAttribute("rand");
		String rand1=(String)request.getParameter("rand");
		if(rand.equals(rand1)==false){
			response.sendRedirect("wrongyzm.jsp");
		}else{
		String username=request.getParameter("username");
		request.getSession().setAttribute("username", username);
		String pwd=request.getParameter("pwd");
		request.getSession().setAttribute("pwd", pwd);
		String usertype=request.getParameter("usertype");
		request.getSession().setAttribute("usertype", usertype);
		DBHelp DB=new DBHelp();
		String sql=null;
		if(usertype.equals("rd_student")){
			sql="select *from RM_Student where SId='"+username+"'and SPwd='"+pwd+"'";
			if(( DB.matchUser(sql))){
				sql="select *from RM_Student where SId='"+username+"'";
				request.getSession().setAttribute("user", DB.getUserName(sql));
				response.sendRedirect("StuMain.jsp");
			}else response.sendRedirect("login_wrong.jsp");
		}else if(usertype.equals("rd_teacher")){
			sql="select *from RM_Teacher where TId='"+username+"'and TPwd='"+pwd+"'";
			if(( DB.matchUser(sql))){
				sql="select *from RM_Teacher where TId='"+username+"'";
				request.getSession().setAttribute("user", DB.getUserName(sql));
				response.sendRedirect("TeaMain.jsp");
			}else response.sendRedirect("login_wrong.jsp");
		}else{
			sql="select *from RM_Manager where MId='"+username+"'and MPwd='"+pwd+"'";
			if(( DB.matchUser(sql))){
				sql="select *from RM_Manager where MId='"+username+"'";
				request.getSession().setAttribute("user", DB.getUserName(sql));
				response.sendRedirect("ManMain.jsp");
			}else response.sendRedirect("login_wrong.jsp");
		}
		}
	
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
