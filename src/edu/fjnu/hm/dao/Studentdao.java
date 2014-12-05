/**
 * 
 */
package edu.fjnu.hm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import edu.fjnu.hm.sever.Student;

/**
 * @author chao
 *
 */
public class Studentdao extends DBHelp {
	
	public void AddStu(Student s)
	{
		
		
		
		String sql="insert into RM_Student values ('"+s.getSId()+"','"+s.getSName()+"','666666','"+s.getSSex()
				+"','"+s.getSPC()+"','"+s.getSNP()+"','"+s.getSBP()+"','"+s.getSNation()+"','"+s.getSBD()
				+"','"+s.getSICN()+"','"+s.getSImage()+"')";
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
		
		
	}
	
public Student getManager(Student m,String mid){
		
		String sql="select * from RM_Manager where MId='"+mid+"'";
				
		Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 
		 try {
			 conn=this.getConnection();
			 prepStmt=conn.prepareStatement(sql);
			 rs=prepStmt.executeQuery(); 
			while(rs.next()){
				m.setSBD(rs.getString("SBD"));
				m.setSBP(rs.getString("SBP"));
				m.setSICN(rs.getString("SICN"));
				m.setSImage(rs.getString("SImage"));
				m.setSName(rs.getString("SName"));
				m.setSNation(rs.getString("SNation"));
				m.setSNP(rs.getString("SNP"));
				m.setSPC(rs.getString("SPC"));
				m.setSSex(rs.getString("SSex"));
				m.setSTel(rs.getString("STel"));
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
	public boolean SaveUserInfo(Student m)
	{
		
		
		
		String sql="update RM_Manager set MName='"+m.getSName()+"',MSex='"+m.getSSex()+"',MPC='"+m.getSPC()+
				"',MNP='"+m.getSNP()+"',MNation='"+m.getSNation()+"',MBP='"+m.getSBP()+"',MTel='"+m.getSTel()+
				"',MBD='"+m.getSBD()+"',MICN='"+m.getSICN()+"',MImage='"+m.getSImage()+"' where MId='"+m.getSId()+"'";
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
