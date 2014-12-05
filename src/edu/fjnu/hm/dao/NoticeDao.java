/**
 * 
 */
package edu.fjnu.hm.dao;


import java.util.Set;
import java.util.List;

import edu.fjnu.hm.sever.Notice;

/**
 * @author lenovo
 *
 */
public interface NoticeDao {
	void saveNot(Notice not);
	List<Notice> listNotice();
	Set<Notice> listSortedNoti();
}
