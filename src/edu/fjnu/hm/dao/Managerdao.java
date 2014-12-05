/**
 * 
 */
package edu.fjnu.hm.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.StringUtils;


import edu.fjnu.hm.controller.toMain;
import edu.fjnu.hm.sever.Manager;

/**
 * @author admin
 *
 */
public class Managerdao extends DBHelp {
	
	/**
	 * ����ݿ��ȡ������Ϣ
	 */
	public Manager getManager(Manager m,String mid){
		
		String sql="select * from RM_Manager where MId='"+mid+"'";
				
		Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 
		 try {
			 conn=this.getConnection();
			 prepStmt=conn.prepareStatement(sql);
			 rs=prepStmt.executeQuery(); 
			while(rs.next()){
				m.setDatetime(rs.getString("MBD"));
				m.setMBP(rs.getString("MBP"));
				m.setMICN(rs.getString("MICN"));
				m.setMImage(rs.getString("MImage"));
				m.setMName(rs.getString("MName"));
				m.setMNation(rs.getString("MNation"));
				m.setMNP(rs.getString("MNP"));
				m.setMPC(rs.getString("MPC"));
				m.setMSex(rs.getString("MSex"));
				m.setMTel(rs.getString("MTel"));
			 } 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);			
		}
		 
		return m;
	}

	
	/**
 *���������Ϣ 
 * @param sql
 * @return
 */
	public boolean SaveUserInfo(Manager m)
	{
		
		
		
		String sql="update RM_Manager set MName='"+m.getMName()+"',MSex='"+m.getMSex()+"',MPC='"+m.getMPC()+
				"',MNP='"+m.getMNP()+"',MNation='"+m.getMNation()+"',MBP='"+m.getMBP()+"',MTel='"+m.getMTel()+
				"',MBD='"+m.getDatetime()+"',MICN='"+m.getMICN()+"',MImage='"+m.getMImage()+"' where MId='"+m.getMid()+"'";
		 Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 
		 try {
			 conn=this.getConnection();
			 //prepStmt=conn.prepareStatement(sql);
			 Statement stmt=conn.createStatement();
			 //rs=prepStmt.executeQuery(); 
			 stmt.executeUpdate(sql);
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);			
		}
		 return true;
		
		
	}
	
	public boolean ReSetPwd(String usertype,String userid){
		
		String sql=null;
		
		if(usertype.equals("1"))
		{
			 sql="update RM_Teacher set TPwd='"+userid+"'where TId='"+userid+"'";
		}
		else 
		{
			sql="update RM_Student set SPwd='"+userid+"'where SId='"+userid+"'";
		}
		
		 Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 
		 try {
			 conn=this.getConnection();
			 //prepStmt=conn.prepareStatement(sql);
			 Statement stmt=conn.createStatement();
			 //rs=prepStmt.executeQuery(); 
			 stmt.executeUpdate(sql);
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);			
		}
		
		return true;
	}
	
	public boolean DropSinagleUser(String usertype,String userid)
	{
		
		String sql=null;
		
		if(usertype.equals("1"))
		{
			 sql="delete from RM_Teacher where TId='"+userid+"'";
		}
		else 
		{
			 sql="delete from RM_Student where SId='"+userid+"'";
		}
		
		 Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 
		 try {
			 conn=this.getConnection();
			 //prepStmt=conn.prepareStatement(sql);
			 Statement stmt=conn.createStatement();
			 //rs=prepStmt.executeQuery(); 
			 stmt.executeUpdate(sql);
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);			
		}
		
		return true;
	}
	
	public boolean DropBatchUser(String startnum,String endnum)
	{
		String sql="delete from RM_Student where SId>'"+String.valueOf((Integer.parseInt(startnum)-1))+"'" +
				"AND SId<'"+String.valueOf((Integer.parseInt(endnum)+1))+"'";
		
		 Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 
		 try {
			 conn=this.getConnection();
			 //prepStmt=conn.prepareStatement(sql);
			 Statement stmt=conn.createStatement();
			 //rs=prepStmt.executeQuery(); 
			 stmt.executeUpdate(sql);
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);			
		}
		
		return true;
	}
}
