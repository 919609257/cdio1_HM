package edu.fjnu.hm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import edu.fjnu.hm.dao.DaoFromDB;

import edu.fjnu.hm.sever.Notice;


public class DaoFromDB implements Dao {

	private final DBHelp d = new DBHelp();
	private final Connection con = (Connection) d.getConnection();
	private String NoticeTableName = "RM_Notice";
	private String TeacherTableName = "RM_Teacher";
	private String ResourceTableName = "RM_Resource";

	/**
	 * ��ʦ�������棬�ɹ�����TRUE��ʧ�ܷ���FALSE
	 */
	public boolean addNotice(Notice not) {

		String sql = "insert into RM_Notice(rid,tid,rtitle,rcontent)";
		PreparedStatement psmt = null;
		try {
			psmt = (PreparedStatement) con.prepareStatement(sql
					+ "values(?,?,?,?)");
			psmt.setString(1, not.getRId());
			psmt.setString(2, not.getTId());
			psmt.setString(3, not.getRTitle());
			psmt.setString(4, not.getRContent());
			int i = psmt.executeUpdate();
			if (i > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (psmt != null) {
				try {
					psmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		return false;
	}

	/**
	 * �������ŷ������й���
	 */
	public Notice getNotice(String rId) {

		String sql = "select*from RM_Notice where RM_Notice.rid= ?";
		PreparedStatement psmt = null;
		ResultSet rs ;
		try {
			psmt = (PreparedStatement) con.prepareStatement(sql);
			psmt.setString(1, rId);
			rs = psmt.executeQuery();
			Notice notice = new Notice();
			notice.setRId(rId);
			rs.next();
			notice.setTId(rs.getString("tid"));
			notice.setRTitle(rs.getString("rtitle"));
			notice.setRContent(rs.getString("rcontent"));
			return notice;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			if (psmt != null) {

				try {
					psmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

		return null;
	}

	/**
	 * ��ʦ���չ����ɾ�����棬�ɹ�����TRUE��ʧ�ܷ���FALSE
	 */
	public boolean deleteNotice(String RId) {
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String sql="delete from RM_Notice where rid=?";
		try {
			  psmt=(PreparedStatement) con.prepareStatement(sql);
			  psmt.setString(1, RId);
			  int i=psmt.executeUpdate();
			if (i > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (psmt != null) {

				try {
					psmt.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return false;
	}

	/**
	 * ��ʦ�����Դ��Ϣ���ɹ�����TRUE��ʧ�ܷ���FALSE
	 */



	/**
	 * ������й���
	 */
	public ResultSet getAllNotice() {

		Statement stm = null;
		ResultSet rs = null;
		try {
			stm = con.createStatement();
			rs = stm.executeQuery("select n.RId, n.RTitle,n.RContent from RM_Teacher t,RM_Notice n where t.TId=n.TId;");
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * ���������Դ��Ϣ
	 */
	public ResultSet getAllResourceInfo() {

		
		return null;
	}

	
	 
}
