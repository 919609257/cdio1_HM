package edu.fjnu.hm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fjnu.hm.dao.DBHelp;

public class ChangePwd extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ChangePwd() {
		super();
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

		doPost(request,response);
	
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

		String oldpwd=(String)request.getParameter("oldpwd");
		String newpwd1=(String)request.getParameter("newpwd1");
		String newpwd2=(String)request.getParameter("newpwd2");
		String usertype=(String)request.getSession().getAttribute("usertype");
		String userid=(String)request.getSession().getAttribute("username");
		String userpwd=(String)request.getSession().getAttribute("pwd");
		if(oldpwd.equals(userpwd))
		{
				if(newpwd1.equals(newpwd2))
				{
					String newpwd=newpwd1;
					DBHelp help=new DBHelp();
					help.ChangePassword(userid, newpwd,usertype);
					request.getSession().setAttribute("pwd", newpwd1);
					response.sendRedirect("warmprompt/remodify_success.jsp");
				}
				else{

					response.sendRedirect("warmprompt/newpwd_wrong.jsp");
					}
		}
		else{
			response.sendRedirect("warmprompt/oldPwd_wrong.jsp");
		}
	}

}
