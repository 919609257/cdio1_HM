package edu.fjnu.hm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.fjnu.hm.dao.Managerdao;
import edu.fjnu.hm.dao.Studentdao;
import edu.fjnu.hm.dao.Teacherdao;
import edu.fjnu.hm.sever.Manager;
import edu.fjnu.hm.sever.Student;
import edu.fjnu.hm.sever.Teacher;

public class AddUser extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddUser() {
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
		
		request.setCharacterEncoding("utf-8");
		String usertype=request.getParameter("usertype");
		String userid=request.getParameter("userid");
		String username = request.getParameter("username");
		String sex = request.getParameter("sex");
		String mnp = request.getParameter("mnp");
		String mnation = request.getParameter("mnation");
		String mbp = request.getParameter("mbp");
		String mtel = request.getParameter("mtel");
		String mdate = request.getParameter("mdate");
		String micn = request.getParameter("micn");
		String mimage =(String) request.getSession().getAttribute("mimage");
		String mpc = request.getParameter("mpc");
		String date = request.getParameter("mdate");
        if(usertype.equals("1")){
			Teacher m = new Teacher();
			m.setTName(username);
			m.setTBP(mbp);
			m.setTBD(date);
			m.setTICN(micn);
			m.setTImage(mimage);
			m.setTNation(mnation);
			m.setTNP(mnp);
			m.setTPC(mpc);
			m.setTSex(sex);
			m.setTTel(mtel);
			m.setTId(userid);
			Teacherdao man = new Teacherdao();
			man.AddStu(m);
			
		}
        else{
        	Student m = new Student();
			m.setSName(username);
			m.setSBP(mbp);
			m.setSBD(date);
			m.setSICN(micn);
			m.setSImage(mimage);
			m.setSNation(mnation);
			m.setSNP(mnp);
			m.setSPC(mpc);
			m.setSSex(sex);
			m.setSTel(mtel);
			m.setSId(userid);
			Studentdao man = new Studentdao();
			man.AddStu(m);
        	
        }
		//response.sendRedirect("warmprompt/remodify_success.jsp");

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.print("<script>alert('±£´æ³É¹¦£¡');location.href='Adduser.jsp';</script>"); 
		out.println("</HTML>");
		out.flush();
		out.close();

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
