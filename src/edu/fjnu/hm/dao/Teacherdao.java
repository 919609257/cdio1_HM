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
import edu.fjnu.hm.sever.Teacher;

/**
 * @author chao
 *
 */
public class Teacherdao extends DBHelp {
	public void AddStu(Teacher s)
	{
		
		
		
		String sql="insert into RM_Teacher values ('"+s.getTId()+"','"+s.getTName()+"','666666','"+s.getTSex()
				+"','"+s.getTPC()+"','"+s.getTNP()+"','"+s.getTNation()+"','"+s.getTBP()+"','"+s.getTTel()+"','"+s.getTBD()
				+"','"+s.getTICN()+"','"+s.getTImage()+"')";
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

}
