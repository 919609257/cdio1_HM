/**
 * 
 */
package edu.fjnu.hm.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import edu.fjnu.hm.sever.HFile;
import edu.fjnu.hm.sever.Notice;



/**
 * @author鑻忔尟瓒�
 *
 */
public class DBHelp {
	/**
	 * 锟斤拷锟斤拷菘锟斤拷锟斤拷锟�
	 * @return
	 */
	public Connection getConnection(){
		Connection conn=null;
		String url = "jdbc:mysql://121.41.51.176:3306/cdio_1_8_DB?useUnicode=true&characterEncoding=UTF-8";
        String user = "cdio_1_8";
        String password = "cdio";
		try{
		 //鍔犺浇椹卞姩
         Class.forName("com.mysql.jdbc.Driver");        
         //鏂板缓杩炴帴
        conn = DriverManager.getConnection(url, user, password);
        }catch (ClassNotFoundException e) {  
		     //椹卞姩鍔犺浇澶辫触
		      System.out.println("椹卞姩鍔犺浇澶辫触");
		  }catch (SQLException ex) {
		    //鏂板缓杩炴帴鍑洪敊
		    System.err.println("SQLException:"+ex.getMessage());
	   }
		return conn;
	}
    
	/**
	  *鍏抽棴杩炴帴
	  */
	 public void closeConnnection(Connection conn) {
	  try {
	   if(conn != null) {
	    conn.close();
	   }
	  } catch (SQLException e) {
	   e.printStackTrace();
	  }
	 }
	 /*
	  * 鍏抽棴PreparedStatement
	  */
	 public void closePrepStmt(PreparedStatement prepStmt){
		 if(prepStmt!=null)
			try {
				prepStmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 }
	 /*
	  * 鍏抽棴ResultSet
	  */
	 public void closeResultSet(ResultSet rs){
		 if(rs!=null)
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	 }
	/*
	 * 楠岃瘉鐢ㄦ埛鐧诲叆
	 */
	 public boolean matchUser(String sql){
		 Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 
		 try {
			 conn=this.getConnection();
			 prepStmt=conn.prepareStatement(sql);
			 rs=prepStmt.executeQuery(); 
			 if(rs.next()==false){
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);			
		}
		 return true;
		
	 }
	 public List<Notice> getNotice(){
		 Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 List<Notice> list=new ArrayList<Notice>();
		 try {
			 conn=this.getConnection();
			 prepStmt=conn.prepareStatement("select * from RM_Notice a,RM_Teacher b where a.TId=b.TId");
			 rs=prepStmt.executeQuery(); 
while(rs.next()){
	Notice no=new Notice();
	no.setRId(rs.getString("RId"));
	no.setRTitle(rs.getString("RTitle"));
	no.setRContent(rs.getString("RContent"));
	no.setTId(rs.getString("TName"));
	list.add(no);
}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);
		}
		return list;
	 }
	 public List<HFile> getFile(){
		 Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 List<HFile> list=new ArrayList<HFile>();
		 try {
			 conn=this.getConnection();
			 prepStmt=conn.prepareStatement("select * from RM_Resource");
			 rs=prepStmt.executeQuery(); 
while(rs.next()){
	HFile file=new HFile();
	file.setRTitle(rs.getString("RTitle"));
	file.setRUrl(rs.getString("RUrl"));
	file.setTId(rs.getString("TId"));
	list.add(file);
}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);
		}
		return list;
	 }

	 
	 public boolean ChangePassword(String userid,String newpwd,String usertype)
		{
		 String sql=null;
		 if(usertype.equals("rd_student")){
			sql="update RM_Student set SPwd='"+newpwd+"'where SId='"+userid+"'";
		 }
		 if(usertype.equals("rd_teacher")){
				sql="update RM_Teacher set TPwd='"+newpwd+"'where TId='"+userid+"'";
			 }
		 if(usertype.equals("rd_manager")){
				sql="update RM_Manager set MPwd='"+newpwd+"'where MId='"+userid+"'";
			 }
			 Connection conn=null;
			 PreparedStatement prepStmt=null;
			 ResultSet rs=null;
			 
			 try {
				 conn=this.getConnection();
				 Statement stmt=conn.createStatement();
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
	 public String getUserName(String sql){
		 Connection conn=null;
		 PreparedStatement prepStmt=null;
		 ResultSet rs=null;
		 String str=null;
		 
		 try {
			 conn=this.getConnection();
			 prepStmt=conn.prepareStatement(sql);
			 rs=prepStmt.executeQuery(); 
			 if(rs.next()){
				str=rs.getString(2);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeResultSet(rs);
			this.closePrepStmt(prepStmt);
			this.closeConnnection(conn);			
		}
		 return str;
		 }
	 }
