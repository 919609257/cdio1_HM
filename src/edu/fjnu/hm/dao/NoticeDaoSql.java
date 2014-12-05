/**
 * 
 */
package edu.fjnu.hm.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.sql.*;
import edu.fjnu.hm.sever.Notice;

/**
 * @author lenovo
 *
 */
public class NoticeDaoSql implements NoticeDao {

	/* (non-Javadoc)
	 * @see edu.fjnu.hm.dao.NoticeDao#saveNot(edu.fjnu.hm.notice.Notice)
	 */
	@Override
	public void saveNot(Notice not) {
		// TODO Auto-generated method stub

	}

	/* (non-Javadoc)
	 * @see edu.fjnu.hm.dao.NoticeDao#listNotice()
	 */
	@Override
	public List<Notice> listNotice() {
		// TODO Auto-generated method stub
		try{
			Notice noti=new Notice();
			DBHelp db=new DBHelp();
			
			
			

			return db.getNotice();
		}catch (Exception e) {
	         System.out.println("读取文件内容出错");
	         e.printStackTrace();
	     }

		return null;
	}

	/* (non-Javadoc)
	 * @see edu.fjnu.hm.dao.NoticeDao#listSortedNoti()
	 */
	@Override
	public Set<Notice> listSortedNoti() {
		// TODO Auto-generated method stub
		return null;
	}

}
